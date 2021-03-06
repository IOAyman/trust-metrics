#!/usr/bin/env python

'''\
shows one or more c2 files on shell.
'''
import sys
import os
import cPickle as pickle
import time
import os.path as path
from gzip import GzipFile
import optparse

# not show: /usr/lib/python2.6/site-packages/networkx/hybrid.py:16: DeprecationWarning: the sets module is deprecated
stderr = sys.stderr
sys.stderr = file('/dev/null','w')
from trustlet.helpers import getfiles,read_c2,prettyplot
sys.stderr = stderr

def main():
    
    o = optparse.OptionParser(usage='usage: %prog [-r] [file1 [file2] [...]]')
    o.add_option('-r','--recursive',default=False,action='store_true')
    o.add_option('-s','--summary',help='don\'t print items, only general info',default=False,action='store_true')
    o.add_option('-l','--short-line',help='trunc each line to 80 chars',default=False,action='store_true')
    o.add_option('-k','--keys',help='show keys',default=False,action='store_true')
    o.add_option('-v','--values',help='show values',default=False,action='store_true')
    o.add_option('-w','--raw',help='show raw values',default=False,action='store_true')
    o.add_option('-i','--info',help='show timestamps, hostnames, ...',default=False,action='store_true')
    o.add_option('-g','--graph',help='plot graph with the timestamps of stored values',default=False,action='store_true')
    o.add_option('-m','--meta',help='show metadata',default=False,action='store_true')
    o.add_option('-a','--all',help='enable all info',default=False,action='store_true')

    o.add_option('-H',False,help='filter on hostname',dest='hname')
    o.add_option('-D',False,help='show only last # days',dest='ndays')
    o.add_option('-S',False,help='show only if string is in key or value field (might slow)',dest='search')
    o.add_option('-K',False,help='show only if string is in key field',dest='key')

    opts, files = o.parse_args()

    # enable all
    if opts.all:
        opts.keys = opts.values = opts.info = opts.meta = True

    # if no options is setted, enable keys
    if not any(opts.__dict__.values()):
        opts.keys = True

    if not files:
	o.print_help()
	return

    #format line
    line = opts.short_line and (lambda l: l[:80]) or (lambda l: l)

    if opts.recursive:
        allfiles = []
        for file in files:
            if path.isdir(file):
                for dir,ds,fs in os.walk(file):
                    allfiles += [path.join(dir,x) for x in fs]
        files = allfiles
    #print files
    for file in files:
        if not file.endswith('.c2'):
            continue
        if len(files)>1:
            print '_'*len(file)
            print file
            print
        
        c2 = read_c2(file)
        #info
        print 'Number of items',len(c2)
        if opts.summary:
            continue

        plot = {} #plot graph

        for i,(k,v) in enumerate(c2.items()):

            # filter

            if type(v) is dict:
                if opts.hname and 'hn' in v and v['hn']!=opts.hname:
                    continue

                if opts.ndays and 'ts' in v and time.time()-v['ts']>int(opts.ndays)*24*60*60:
                    continue

                if opts.key and opts.key not in str(k):
                    continue

                if opts.search and opts.search not in str(k) and opts.search not in str(v):
                    continue

            #

            print '~ Item %d ~'%i
            if opts.keys:
                print line('Key: '+str(k))
            if opts.values:
                if type(v) is dict and 'dt' in v:
                    print line('Value: '+str(v['dt']))
                else:
                    print line(str(v))
            if opts.raw:
                print line('Raw Value: '+str(v))
            if opts.info and type(v) is dict:
                if 'ts' in v:
                    print 'Timestamp:',time.ctime(v['ts'])
                else:
                    print 'No timestamp'
                if 'hn' in v:
                    print 'Hostname:',v['hn']
                else:
                    print 'No hostname'
            if opts.graph and 'ts' in v:
                date = '%.4d-%.2d-%.2d'%time.gmtime(v['ts'])[:3]
                plot.setdefault(date,0)
                plot[date] += 1

            if opts.meta:
                if type(v) is dict and 'mt' in v:
                    print line(' '+str(v['mt']))
                else:
                    print 'No debug info'

        if opts.graph:
            fname = file
            if fname.endswith('.c2'):
                fname = fname[:-3]
            prettyplot(list(plot.iteritems()),fname,showlines=True,title='Age of cache info')

if __name__=="__main__":
    main()

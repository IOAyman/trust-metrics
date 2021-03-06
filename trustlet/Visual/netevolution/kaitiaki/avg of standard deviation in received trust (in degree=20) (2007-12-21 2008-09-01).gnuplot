#!/usr/bin/env gnuplot
# Title: avg of standard deviation in received trust (in degree=20)
# Date: Thu Oct 16 17:26:12 2008
#     cont = [] # controversiality array
# 
#     for n in K.nodes_iter():
#         in_edges = K.in_edges(n)
#         
#         # min_in_degree -> written in name of function
#         if len(in_edges)<min_in_degree:
#             continue
# 
#         cont.append(
#             numpy.std([_obs_app_jour_mas_map[x[2]['level']] for x in in_edges])
#         )
# 
#     return avg(cont)

set title "avg of standard deviation in received trust (in degree=20)"
set data style linespoint
set xdata time
set timefmt "%Y-%m-%d"
set terminal png
set output "avg of standard deviation in received trust (in degree=20) (2007-12-21 2008-09-01).png"
plot "-" using 1:2 title ""
2007-12-21 None
2007-12-22 None
2007-12-23 None
2007-12-24 None
2007-12-25 None
2007-12-26 None
2007-12-27 None
2007-12-28 None
2007-12-29 None
2007-12-30 None
2007-12-31 None
2008-01-01 None
2008-01-02 None
2008-01-03 None
2008-01-04 None
2008-01-05 None
2008-01-06 None
2008-01-07 None
2008-01-08 None
2008-01-09 None
2008-01-10 None
2008-01-11 None
2008-01-12 None
2008-01-13 None
2008-01-14 None
2008-01-15 None
2008-01-16 None
2008-01-17 None
2008-01-18 None
2008-01-19 None
2008-01-20 None
2008-01-21 None
2008-01-22 None
2008-01-23 None
2008-01-24 None
2008-01-25 None
2008-01-26 None
2008-01-27 None
2008-01-28 None
2008-01-29 None
2008-01-30 None
2008-01-31 None
2008-02-01 None
2008-02-02 None
2008-02-03 None
2008-02-04 None
2008-02-05 None
2008-02-06 None
2008-02-07 None
2008-02-08 None
2008-02-10 None
2008-02-11 None
2008-02-12 None
2008-02-13 None
2008-02-14 None
2008-02-15 None
2008-02-16 None
2008-02-17 None
2008-02-18 None
2008-02-19 None
2008-02-20 None
2008-02-21 None
2008-02-22 None
2008-02-23 None
2008-02-24 None
2008-02-25 None
2008-02-26 None
2008-02-27 None
2008-02-28 None
2008-02-29 None
2008-03-01 None
2008-03-02 None
2008-03-03 None
2008-03-04 None
2008-03-05 None
2008-03-06 None
2008-03-07 None
2008-03-08 None
2008-03-09 None
2008-03-10 None
2008-03-11 None
2008-03-12 None
2008-03-13 None
2008-03-14 None
2008-03-15 None
2008-03-16 None
2008-03-17 None
2008-03-18 None
2008-03-19 None
2008-03-20 None
2008-03-21 None
2008-03-22 None
2008-03-23 None
2008-03-24 None
2008-03-25 None
2008-03-26 None
2008-03-27 None
2008-03-28 None
2008-03-29 None
2008-03-30 None
2008-03-31 None
2008-04-01 None
2008-04-02 None
2008-04-03 None
2008-04-04 None
2008-04-06 None
2008-04-07 None
2008-04-08 None
2008-04-09 None
2008-04-10 None
2008-04-11 None
2008-04-12 None
2008-04-13 None
2008-04-14 None
2008-04-15 None
2008-04-16 None
2008-04-17 None
2008-04-18 None
2008-04-19 None
2008-04-20 None
2008-04-21 None
2008-04-22 None
2008-04-23 None
2008-04-24 None
2008-04-25 None
2008-04-26 None
2008-04-27 None
2008-04-28 None
2008-04-29 None
2008-04-30 None
2008-05-01 None
2008-05-02 None
2008-05-03 None
2008-05-04 None
2008-05-05 None
2008-05-06 None
2008-05-07 None
2008-05-08 None
2008-05-09 None
2008-05-10 None
2008-05-11 None
2008-05-12 None
2008-05-13 None
2008-05-14 None
2008-05-15 None
2008-05-16 None
2008-05-17 None
2008-05-18 None
2008-05-19 None
2008-05-20 None
2008-05-21 None
2008-05-22 None
2008-05-23 None
2008-05-24 None
2008-05-25 None
2008-05-26 None
2008-05-27 None
2008-05-28 None
2008-05-29 None
2008-05-30 None
2008-05-31 None
2008-06-01 None
2008-06-02 None
2008-06-03 None
2008-06-04 None
2008-06-05 None
2008-06-06 None
2008-06-07 None
2008-06-08 None
2008-06-09 None
2008-06-10 None
2008-06-11 None
2008-06-12 None
2008-06-13 None
2008-06-14 None
2008-06-15 None
2008-06-16 None
2008-06-17 None
2008-06-18 None
2008-06-19 None
2008-06-20 None
2008-06-21 None
2008-06-22 None
2008-06-23 None
2008-06-24 None
2008-06-25 None
2008-06-26 None
2008-06-27 None
2008-06-28 None
2008-06-29 None
2008-06-30 None
2008-07-01 None
2008-07-02 None
2008-07-03 None
2008-07-04 None
2008-07-05 None
2008-07-06 None
2008-07-07 None
2008-07-08 None
2008-07-09 None
2008-07-10 None
2008-07-11 None
2008-07-12 None
2008-07-13 None
2008-07-14 None
2008-07-15 None
2008-07-16 None
2008-07-17 None
2008-07-18 None
2008-07-19 None
2008-07-20 None
2008-07-21 None
2008-07-22 None
2008-07-23 None
2008-07-24 None
2008-07-25 None
2008-07-26 None
2008-07-27 None
2008-07-28 None
2008-07-29 None
2008-07-30 None
2008-07-31 None
2008-08-01 None
2008-08-02 None
2008-08-03 None
2008-08-04 None
2008-08-05 None
2008-08-06 None
2008-08-07 None
2008-08-08 None
2008-08-09 None
2008-08-10 None
2008-08-11 None
2008-08-12 None
2008-08-13 None
2008-08-14 None
2008-08-15 None
2008-08-16 None
2008-08-17 None
2008-08-18 None
2008-08-19 None
2008-08-20 None
2008-08-21 None
2008-08-22 None
2008-08-23 None
2008-08-24 None
2008-08-25 None
2008-08-26 None
2008-08-27 None
2008-08-28 None
2008-08-29 None
2008-08-30 None
2008-08-31 None
2008-09-01 None
e

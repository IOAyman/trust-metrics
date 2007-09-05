import random
import os, sys, time
from pprint import pprint

from Advogato import Advogato
from trustmetrics import *

"""
    Attention: Edges that are self loops might be problematic
    
    Problem: This only evaluates the trust metric for where there was
    an edge already. We should probably add another evaluation,
    e.g. the 'distrust' evaluation, on all possible edges where there
    was no edge already.

"""


def evaluate(graph, trustmetric, debug_interval = 1, max_edges = 0):
    #error_graph = graph.get_nodes() # same nodes, no edges

    num_unpredicted_edges = abs_err = sqr_err = count = 0
    start_time = prev_time = time.time()
    print "start time:", start_time
    for edge in graph.edges():
        graph.delete_edge(edge)
        a, b, dummy = edge
        real_trust = trust_on_edge(edge)
        predicted_trust = trustmetric(graph, a, b)

        #error_graph.add_edge(predicted_trust as the value on edge (a, b))
        if predicted_trust is None:
            num_unpredicted_edges += 1
        else:
            abs_err += abs(predicted_trust - real_trust)
            sqr_err += (lambda x:x*x)(predicted_trust - real_trust)
            
        count += 1.
        if debug_interval == 1:
            print edge, predicted_trust

        if divmod(count, debug_interval)[1] == 0:
            t = time.time()
            acc = abs_err / count
            acc2 = sqr_err / count
            unpredicted = num_unpredicted_edges / count
            print 'cnt', int(count), 'acc', acc, 'acc2', acc2, 'unpredicted', unpredicted, "avg time:", (t - start_time) / count
            prev_time = t
        graph.add_edge(edge)
        if max_edges == count:
            break

    num_edges = count #max_edges or graph.number_of_edges()
    num_predicted_edges = num_edges - num_unpredicted_edges
    coverage = (num_predicted_edges * 1.0) / num_edges
    accuracy =  abs_err / (num_predicted_edges or 1)

    output = (trustmetric.__name__, accuracy, coverage)
    pprint (output)
    return output 


def evaluator(graph, tm_list):
    return map(lambda tm: evaluate(graph, tm), tm_list)


if __name__ == "__main__":
    syntax_debugging = False
    if syntax_debugging:
        advogato = Advogato("tiny")
    else:
        advogato = Advogato()
            
    evaluations = evaluator(advogato,
                            [advogato_tm,
                             # moletrust_tm,
                             outa_tm,
                             outb_tm,
                             intersection_tm,
                             lambda g,a,b: (avg_or_none([edges_a_tm(g,a,b), intersection_tm(g,a,b)])),
                             ebay_tm,
                             ])
    pprint(evaluations)

    simple_tms = [lambda G,a,b: random.random(),
                  lambda G,a,b: random.choice([0, 0.6, 0.8, 1]),
                  lambda G,a,b: 0,
                  lambda G,a,b: 0.6,
                  lambda G,a,b: 0.8,
                  lambda G,a,b: 0.9
                  ]

    # evals = evaluator(advogato, simple_tms)
    # pprint(evals)
   

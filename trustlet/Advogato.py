#!/usr/bin/env python

import Dataset
import pydot

class Advogato(Dataset.Network):
    def __init__(self):
        Dataset.Network.__init__(self)
        self.url = "http://www.advogato.org/person/graph.dot"
        self.file = 'graph.dot'
    
    def download(self):
        self.download(self.url, self.file)

    def load(self):
        g = pydot.graph_from_dot_file(os.path.join(self.path, self.file))
    


if __name__ == "__main__":
    adv = Advogato()
    adv.load()
            

sig Node { adj: set Node } pred undirected { no adj } pred undirectedOK { all n: Node | n.adj = ~n.adj }
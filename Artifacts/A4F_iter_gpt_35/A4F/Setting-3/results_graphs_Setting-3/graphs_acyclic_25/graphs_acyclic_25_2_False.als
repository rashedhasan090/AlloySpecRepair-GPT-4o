sig Node { adj : set Node } pred acyclicOK { no n: Node | n not in n.adj }
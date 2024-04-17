sig Node { adj: set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { iden not in ^adj } pred complete { all n: Node | Node in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all n: Node | Node in n.*(adj+~adj) } pred stronglyConnected { all n: Node | n in n.*adj } pred transitive { adj.adj in adj }
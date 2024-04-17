sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a:Node | a not in a.^adj } pred complete { all n:Node | n.adj = Node } pred noLoops { no (iden & adj) } pred weaklyConnected { all x, y : Node | some x.*(adj + ~adj) & y.*(adj + ~adj) } pred stronglyConnected { all n:Node | Node in n.*adj } pred transitive { adj.adj in adj }
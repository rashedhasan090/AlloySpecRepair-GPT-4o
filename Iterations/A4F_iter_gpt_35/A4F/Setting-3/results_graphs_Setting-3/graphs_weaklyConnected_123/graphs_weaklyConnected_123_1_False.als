sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a:Node | a not in a.^adj } pred complete { all n:Node | Node in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all x, y : Node | some (^adj).y & x } pred stonglyConnected { all n:Node | Node in n.*adj } pred transitive { adj.adj in adj }
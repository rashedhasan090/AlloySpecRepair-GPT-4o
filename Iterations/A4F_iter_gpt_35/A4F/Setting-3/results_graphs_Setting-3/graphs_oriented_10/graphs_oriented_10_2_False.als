sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { all x, y : Node | x->y in adj and y->x in adj implies y = x } pred acyclic { all a:Node | a not in a.^adj } pred complete { all n:Node | Node in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all n:Node | Node in n.*(adj+~adj) } pred stonglyConnected { all n:Node | Node in n.*adj } pred transitive { all n:Node | n.adj in n.adj }
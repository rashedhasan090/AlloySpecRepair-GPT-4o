sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj } pred acyclic { all a:Node | a not in a.^adj } pred complete { all a:Node | a in a.^adj and a.^adj in a } pred noLoops { no (iden & adj) } pred weaklyConnected { all n:Node | Node in n.*(adj+~adj) } pred stonglyConnected { all n:Node | Node in n.*adj } pred transitive { adj.adj in adj }
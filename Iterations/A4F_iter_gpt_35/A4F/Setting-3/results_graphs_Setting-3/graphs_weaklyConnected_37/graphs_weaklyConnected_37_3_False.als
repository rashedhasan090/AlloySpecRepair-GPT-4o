sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a:Node | a not in a.^adj } pred complete { all n:Node | Node in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all n1,n2:Node | n2 in n1.^(adj + ~adj) || n1 in n2.^(adj + ~adj) } pred stonglyConnected { all n:Node | Node in n.*adj } pred transitive { adj.adj in adj } pred weaklyConnectedOK { all n:Node | n in n.*(adj+~adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
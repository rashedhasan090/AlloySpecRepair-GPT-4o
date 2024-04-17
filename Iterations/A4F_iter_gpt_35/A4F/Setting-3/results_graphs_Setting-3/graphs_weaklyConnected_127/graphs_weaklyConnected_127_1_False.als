sig Node { adj: set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a: Node | a not in a.^adj } pred complete { all n: Node | Node in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all n: Node | Node in n.*(adj+~adj) } pred stronglyConnected { all n: Node | Node in n.*adj } pred transitive { adj.adj in adj } pred undirectedOK { adj = ~adj } pred orientedOK { no adj & ~adj } pred acyclicOK { all a: Node | a not in a.^adj } pred completeOK { all n: Node | Node in n.adj } pred noLoopsOK { no (iden & adj) } pred weaklyConnectedOK { all n: Node | Node in n.*(adj+~adj) } pred stronglyConnectedOK { all n: Node | Node in n.*adj } pred transitiveOK { adj.adj in adj } assert undirectedRepaired { undirected[] iff undirectedOK[] } assert orientedRepaired { oriented[] iff orientedOK[] } assert acyclicRepaired { acyclic[] iff acyclicOK[] } assert completeRepaired { complete[] iff completeOK[] } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] } assert stronglyConnectedRepaired { stronglyConnected[] iff stronglyConnectedOK[] } assert transitiveRepaired { transitive[] iff transitiveOK[] }
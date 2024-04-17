sig Node { adj: set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a: Node | a not in a.^adj } pred complete { all n: Node | n.adj = Node - n } pred noLoops { no (iden & adj) } pred weaklyConnected { all a, b: Node | b in a.^adj } pred stronglyConnected { all n: Node | Node in n.*adj } pred transitive { adj.adj in adj } pred undirectedOK { adj = ~adj } assert undirectedRepaired { undirected[] iff undirectedOK[] } pred orientedOK { no adj & ~adj } assert orientedRepaired { oriented[] iff orientedOK[] } pred acyclicOK { all a: Node | a not in a.^adj } assert acyclicRepaired { acyclic[] iff acyclicOK[] } pred completeOK { all n: Node | n.adj = Node - n } assert completeRepaired { complete[] iff completeOK[] } pred noLoopsOK { no (iden & adj) } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] } pred weaklyConnectedOK { all n: Node | Node in n.*(adj + ~adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] } pred stronglyConnectedOK { all n: Node | Node in n.*adj } assert stronglyConnectedRepaired { stronglyConnected[] iff stronglyConnectedOK[] } pred transitiveOK { adj.adj in adj } assert transitiveRepaired { transitive[] iff transitiveOK[] }
sig Node { adj: set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a: Node | a not in a.^adj } pred complete { all n: Node | n.adj = Node } pred noLoops { no iden & adj } pred weaklyConnected { all n: Node | n in n.*(adj + ~adj) } pred stronglyConnected { all n: Node | n in n.*adj } pred transitive { adj.adj in adj } assert undirectedRepaired { undirected[] iff undirected[] } assert orientedRepaired { oriented[] iff oriented[] } assert acyclicRepaired { acyclic[] iff acyclic[] } assert completeRepaired { complete[] iff complete[] } assert noLoopsRepaired { noLoops[] iff noLoops[] } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnected[] } assert stronglyConnectedRepaired { stronglyConnected[] iff stronglyConnected[] } assert transitiveRepaired { transitive[] iff transitive[] }
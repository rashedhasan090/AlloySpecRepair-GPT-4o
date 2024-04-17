sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a:Node | a not in a.^adj } pred complete { all n:Node | n in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all a,b:Node | a->b in adj implies b->a in adj } pred stonglyConnected { all n:Node | Node in n.*adj } pred transitive { adj.adj in adj } pred connected { all n:Node | some m:Node | n in m.*adj or m in n.*adj } assert undirectedRepaired { undirected[] iff undirectedOK[] } assert orientedRepaired { oriented[] iff orientedOK[] } assert acyclicRepaired { acyclic[] iff acyclicOK[] } assert completeRepaired { complete[] iff completeOK[] } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] } assert stonglyConnectedRepaired { stonglyConnected[] iff stonglyConnectedOK[] } assert transitiveRepaired { transitive[] iff transitiveOK[] } assert connectedRepaired { connected[] iff connectedOK[] } check undirectedRepaired expect 0 check orientedRepaired expect 0 check acyclicRepaired expect 0 check completeRepaired expect 0 check noLoopsRepaired expect 0 check weaklyConnectedRepaired expect 0 check stonglyConnectedRepaired expect 0 check transitiveRepaired expect 0 check connectedRepaired expect 0
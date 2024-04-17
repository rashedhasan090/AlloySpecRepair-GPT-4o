sig Node { adj : set Node }

pred undirected { adj = ~adj }

pred oriented { no adj & ~adj }

pred acyclic { all a:Node | a not in a.^adj }

pred complete { all n:Node | Node in n.adj }

pred noLoops { no (iden & adj) }

pred weaklyConnected { all n:Node | some n.(n->n.*adj) }

pred stonglyConnected { all n:Node | Node in n.*adj }

pred transitive { adj.adj in adj }

pred undirectedOK { adj = ~adj }

assert undirectedRepaired { undirected[] iff undirectedOK[] }

pred orientedOK { no adj & ~adj }

assert orientedRepaired { oriented[] iff orientedOK[] }

pred acyclicOK { all a:Node | a not in a.^adj }

assert acyclicRepaired { acyclic[] iff acyclicOK[] }

pred completeOK { all n:Node | Node in n.adj }

assert completeRepaired { complete[] iff completeOK[] }

pred noLoopsOK { no (iden & adj) }

assert noLoopsRepaired { noLoops[] iff noLoopsOK[] }

pred weaklyConnectedOK { all n:Node | Node in n.*(adj+~adj) }

assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }

pred stonglyConnectedOK { all n:Node | Node in n.*adj }

assert stonglyConnectedRepaired { stonglyConnected[] iff stonglyConnectedOK[] }

pred transitiveOK { adj.adj in adj }

assert transitiveRepaired { transitive[] iff transitiveOK[] }
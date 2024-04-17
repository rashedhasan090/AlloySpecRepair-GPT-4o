/*This file was automatically generated by AUnit v1.0's coverage-based test generation feature. Test Suite Details: ---------- Tests generated over: GRAPHS_templateAllCorrect.als Number Valuations: 8 Number Tests: 38 Scope used: 5*/ sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all a:Node | a not in a.^adj } pred complete { all n:Node | Node in n.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all n:Node | Node in n.^adj + n.^~adj + n } pred stonglyConnected { all n:Node | Node in n.*adj } pred transitive { adj.adj in adj } /*======== IFF PERFECT ORACLE ===============*/ pred undirectedOK { adj = ~adj } assert undirectedRepaired { undirected[] iff undirectedOK[] } -------- pred orientedOK { no adj & ~adj } assert orientedRepaired { oriented[] iff orientedOK[] } -------- pred acyclicOK { all a:Node | a not in a.^adj } assert acyclicRepaired { acyclic[] iff acyclicOK[] } -------- pred completeOK { all n:Node | Node in n.adj } assert completeRepaired { complete[] iff completeOK[] } -------- pred noLoopsOK { no (iden & adj) } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] } -------- pred weaklyConnectedOK { all n:Node | Node in n.^adj + n.^~adj + n } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] } -------- pred stonglyConnectedOK { all n:Node | Node in n.*adj } assert stonglyConnectedRepaired { stonglyConnected[] iff stonglyConnectedOK[] } -------- pred transitiveOK { adj.adj in adj } assert transitiveRepaired { transitive[] iff transitiveOK[] } - -- PerfectOracleCommands check undirectedRepaired expect 0 check orientedRepaired expect 0 check acyclicRepaired expect 0 check completeRepaired expect 0 check noLoopsRepaired expect 0 check weaklyConnectedRepaired expect 0 check stonglyConnectedRepaired expect 0 check transitiveRepaired expect 0 pred repair_pred_1{weaklyConnected[] iff weaklyConnectedOK[] } run repair_pred_1 assert repair_assert_1{weaklyConnected[] iff weaklyConnectedOK[] } check repair_assert_1
sig Node { adj : set Node } pred undirected { adj = ~adj } pred oriented { no adj & ~adj } pred acyclic { all n : Node | no n & n.(*adj) } pred complete { all n:Node | all m:Node | n in m.adj } pred noLoops { no (iden & adj) } pred weaklyConnected { all n:Node | all m:Node | n in m.*(adj+~adj) } pred stonglyConnected { all n:Node | all m:Node | n in m.*adj } pred transitive { all n:Node | all m:Node | all o:Node | n in m.adj and m in o.adj implies n in o.adj }
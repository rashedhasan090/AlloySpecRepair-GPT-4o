sig Node { adj : set Node } pred noLoopsOK { no n:Node | n in n.adj } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] }
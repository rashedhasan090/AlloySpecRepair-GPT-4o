sig Node { adj : set Node } pred noLoops { no ~adj.adj } pred noLoopsOK { no (iden & adj) } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] } check noLoopsRepaired expect 0
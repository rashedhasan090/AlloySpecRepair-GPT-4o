sig Node { adj : set Node } pred noLoopsOK { all a : Node | no (a.adj & a) } assert noLoopsRepaired { noLoops[] iff noLoopsOK[] }
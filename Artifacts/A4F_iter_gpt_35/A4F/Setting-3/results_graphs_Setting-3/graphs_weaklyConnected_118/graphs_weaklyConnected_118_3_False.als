sig Node { adj : set Node } pred weaklyConnected { all x, y : Node | ^adj.x in ^adj.y & x } pred weaklyConnectedOK { all n:Node | Node in n.*(adj+~adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
sig weaklyConnected {} sig Node { adj : set Node } pred weaklyConnected { all x : Node | Node in x.^adj + x } pred weaklyConnectedOK { all n:Node | Node in n.*(adj+~adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
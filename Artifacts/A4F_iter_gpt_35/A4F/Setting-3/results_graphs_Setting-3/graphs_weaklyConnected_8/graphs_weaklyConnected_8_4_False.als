sig Node { adj : set Node } pred weaklyConnected { all n:Node | n in n.*(adj+~adj) } pred weaklyConnectedOK { all n:Node | n in n.*(adj+~adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
sig Node { adj : set Node } pred weaklyConnectedOK { all n:Node | some n->(n.*(adj+~adj)) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
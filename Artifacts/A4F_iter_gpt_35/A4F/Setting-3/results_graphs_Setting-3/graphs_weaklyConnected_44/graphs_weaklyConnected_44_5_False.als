sig Node { adj : set Node } pred weaklyConnectedOK { all n:Node | Node in (n.^adj + n.^~adj + n) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
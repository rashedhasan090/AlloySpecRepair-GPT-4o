sig Node { adj : set Node } pred weaklyConnectedOK { all n:Node | n in n.*(n.adj + n.adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] }
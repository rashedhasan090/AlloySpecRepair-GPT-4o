sig Node { adj: set Node } pred weaklyConnected { all n:Node | Node in n.*(adj+~adj) } pred weaklyConnectedOK { all n:Node | Node in n.*(adj+~adj) } assert weaklyConnectedRepaired { weaklyConnected[] iff weaklyConnectedOK[] } pred repair_pred_1 { weaklyConnected[] iff weaklyConnectedOK[] }
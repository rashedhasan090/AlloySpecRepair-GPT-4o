sig Node { adj: set Node } pred weaklyConnectedOK { all n: Node | Node in n.*(adj+~adj) } pred repair_pred_1 { weaklyConnected[] iff weaklyConnectedOK[] } assert repair_assert_1 { weaklyConnected[] iff weaklyConnectedOK[] }
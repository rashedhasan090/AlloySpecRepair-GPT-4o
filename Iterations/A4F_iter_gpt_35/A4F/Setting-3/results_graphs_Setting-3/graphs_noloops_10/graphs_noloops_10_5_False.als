sig Node { adj : set Node } pred noLoops { all n:Node | n not in n.^adj } pred noLoopsOK { no (iden & adj) } pred repair_pred_1 { noLoops[] iff noLoopsOK[] } run repair_pred_1
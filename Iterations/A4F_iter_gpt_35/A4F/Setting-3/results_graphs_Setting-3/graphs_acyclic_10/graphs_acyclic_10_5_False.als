sig Node { adj : set Node } pred acyclicOK { all a:Node | no a in a.^adj } pred repair_pred_1 { acyclic[] iff acyclicOK[] }
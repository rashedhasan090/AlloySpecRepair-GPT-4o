sig Node { adj: set Node } pred repair_pred_1 { all x, y: Node | (x in x.^adj) and (y in y.^adj) } run repair_pred_1
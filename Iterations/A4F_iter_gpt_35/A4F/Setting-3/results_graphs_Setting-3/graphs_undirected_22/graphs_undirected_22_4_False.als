sig Node { adj: set Node } pred undirected { ~adj.adj in iden and iden in ~adj.adj } pred undirectedOK { adj = ~adj } pred repair_pred_1 { undirected[] iff undirectedOK[] }
sig Node { adj : set Node } pred undirected { ~adj.adj in iden and adj.~adj in iden } pred undirectedOK { adj = ~adj } pred repair_pred_1 { undirected[] iff undirectedOK[] } assert repair_assert_1 { undirected[] iff undirectedOK[] }
sig Node { adj: set Node } pred undirectedOK { adj = ~adj } assert repair_assert_1 { undirected[] iff undirectedOK[] }
sig Node { adj : set Node } pred undirected { ~adj.adj in iden } pred undirectedOK { adj = ~adj } assert undirectedRepaired { undirected[] <=> undirectedOK[] }
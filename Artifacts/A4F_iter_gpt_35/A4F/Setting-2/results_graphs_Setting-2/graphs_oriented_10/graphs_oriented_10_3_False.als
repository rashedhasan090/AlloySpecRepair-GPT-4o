sig Node { adj: set Node } pred oriented { all x, y: Node | x -> y in adj and y -> x in adj implies y = x } pred orientedOK { no adj & ~adj } assert orientedRepaired { oriented[] iff orientedOK[] } check orientedRepaired for 5
sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv2 { one Init && no trans } pred inv2_OK { one Init } assert inv2_Repaired { inv2[] iff inv2_OK[] }
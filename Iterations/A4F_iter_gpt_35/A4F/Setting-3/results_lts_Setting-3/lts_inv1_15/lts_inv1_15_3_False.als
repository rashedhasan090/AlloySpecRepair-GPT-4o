sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv1 { some trans } pred inv1_OK { all s: State | some s.trans } assert inv1_Repaired { inv1[] iff inv1_OK[] }
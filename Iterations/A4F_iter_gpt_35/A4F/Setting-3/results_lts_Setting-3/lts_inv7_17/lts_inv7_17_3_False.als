sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv7 { all x : Init | (x.trans) in Event -> one State } pred inv7_OK { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | all s : Init.^tr | some i : Init | i in s.^tr } assert inv7_Repaired { inv7[] iff inv7_OK[] }
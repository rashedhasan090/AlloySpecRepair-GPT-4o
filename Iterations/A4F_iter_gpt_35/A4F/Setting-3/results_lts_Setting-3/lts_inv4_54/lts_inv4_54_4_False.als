sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv4 { let tr = { s1, s2 : State, e : Event | s1->e in trans and e->s2 in trans } | State in Init.^tr } assert inv4_Repaired { inv4[] iff inv4_OK[] }
sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv4_OK { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | State in Init.^tr } assert repair_assert_1 { inv4[] iff inv4_OK[] }
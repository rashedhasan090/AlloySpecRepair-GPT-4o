sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv5_OK { all x, y, z : State | some e : Event | x->e->y in trans implies y->e->x in trans } assert inv5_Repaired { inv5[] iff inv5_OK[] }
sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv5_OK { all s:State, s1:State | s.trans.State = s1.trans.State } assert inv5_Repaired { inv5[] iff inv5_OK[] } check inv5_Repaired expect 0
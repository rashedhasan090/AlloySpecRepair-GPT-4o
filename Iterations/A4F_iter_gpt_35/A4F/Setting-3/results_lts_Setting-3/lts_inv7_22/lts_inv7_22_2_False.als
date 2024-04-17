sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv1 { all s: State | some s.trans } pred inv2 { one Init } pred inv3 { all s : State, e : Event | lone e.(s.trans) } pred inv4 { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | State in Init.^tr } pred inv5 { all s:State, s1:State | s.trans.State = s1.trans.State } pred inv6 { all e:Event | some s1,s2:State | s1->e->s2 in trans } pred inv7 { all x : State | some Init.(*(~(x.trans))) } pred inv7_OK { all s : Init.*State | some s.trans } assert inv7_Repaired { inv7[] iff inv7_OK[] }
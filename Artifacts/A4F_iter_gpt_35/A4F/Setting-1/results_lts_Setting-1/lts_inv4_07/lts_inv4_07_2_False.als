 sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv1 { all s: State | some s.trans } pred inv2 { one Init } pred inv3 { all s : State, e : Event | lone e.(s.trans) } pred inv4 { all i:Init, s:State, e:Event | i->e->s in trans } pred inv5 { all s:State, s1:State | s.trans = s1.trans } pred inv6 { all e:Event | some s:State | e in s.trans } pred inv7 { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | all s : Init.^tr | some i : Init | i in s.^tr } 
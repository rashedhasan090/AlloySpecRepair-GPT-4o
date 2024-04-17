sig State { trans : Event -> State }
sig Init in State {}
sig Event {}
pred inv1 { all s: State | some s.trans }
pred inv2 { one Init }
pred inv3 { all s : State, e : Event | lone e.(s.trans) }
pred inv4 { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | State in Init.^tr }
pred inv5 { all s:State, s1:State | s.trans.State = s1.trans.State }
pred inv7 { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | all s : Init.^tr | some i : Init | i in s.^tr }

pred inv4_OK { let tr = { s1, s2 : State | some e : Event | s1->e->s2 in trans } | State in Init.^tr }
assert inv4_Repaired { inv4[] iff inv4_OK[] }
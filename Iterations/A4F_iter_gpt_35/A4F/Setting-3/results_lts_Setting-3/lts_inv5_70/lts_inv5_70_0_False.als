sig State { trans: Event -> State } sig Init in State {} sig Event {} pred inv1 { all s: State | some s.trans } pred inv2 { one Init } pred inv3 { all s: State, e: Event | lone e.(s.trans) } pred inv4 { let tr = {s1, s2: State, e: Event | s1.trans[e] = s2} | State in Init.^tr } pred inv5 { all s: State, s': State | s.trans.State = s'.trans.State } pred inv6 { all e: Event | some s1, s2: State | s1.trans[e] = s2 } pred inv7 { let tr = {s1, s2: State, e: Event | s1.trans[e] = s2} | all s: Init.^tr | some i: Init | i in s.^tr } run {} for 5 State, 5 Init, 5 Event, 5 trans
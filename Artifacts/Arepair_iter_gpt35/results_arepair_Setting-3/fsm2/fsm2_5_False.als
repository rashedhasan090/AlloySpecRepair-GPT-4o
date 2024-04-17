one sig FSM { start: set State, stop: set State } sig State { transition: set State } // Part (a) fact OneStartAndStop { #FSM.start = 1 #FSM.stop = 1 } // Part (b) fact ValidStartAndStop { FSM.start != FSM.stop all s:State | FSM.start != s.transition no FSM.stop.transition } // Part (c) fact Reachability { State = FSM.start.*transition all s:(State - FSM.stop) | FSM.stop in s.*transition } assert repair_assert_1 { all s: State | s not in FSM.start.transition } check repair_assert_1 pred repair_pred_1 { all s: State | s not in FSM.start.transition } run repair_pred_1
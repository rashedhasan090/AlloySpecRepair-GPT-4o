one sig FSM {
start: set State,
stop: set State
}

sig State {
transition: set State
}

fact OneStartAndStop {
all start1, start2 : FSM.start | start1 = start2
all stop1, stop2 : FSM.stop | stop1 = stop2
some FSM.stop
}

fact ValidStartAndStop {
FSM.start !in FSM.stop
all s : State | FSM.start !in s.transition
all s: State | s.transition = none => s in FSM.stop
}

fact NoTransitionFromStop {
no FSM.stop.transition
}

fact Reachability {
State = FSM.start.*transition
all s: State | FSM.stop in s.*transition
}

assert repair_assert_1{
no FSM.stop.transition
}
check repair_assert_1

pred repair_pred_1{
no FSM.stop.transition
}
run repair_pred_1
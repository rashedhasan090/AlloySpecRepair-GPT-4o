sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv1_OK { all s: State | some s.trans } assert inv1_Repaired { inv1[] iff inv1_OK[] } check inv1_Repaired expect 0 pred repair_pred_1 { inv1[] iff inv1_OK[] } run repair_pred_1 assert repair_assert_1 { inv1[] iff inv1_OK[] } check repair_assert_1
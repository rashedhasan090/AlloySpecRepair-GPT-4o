sig State { trans : Event -> State } sig Init in State {} sig Event {} pred inv5_OK { all s:State | Event in s.trans } assert repair_assert_1 { inv5[] iff inv5_OK[] }
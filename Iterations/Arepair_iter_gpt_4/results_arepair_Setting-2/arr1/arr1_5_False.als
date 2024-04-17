sig Element {}
one sig Array {
i2e: Int -> Element,
length: Int
}
fact Reachable {
Element = Array.i2e[Int]
}

fact InBound {
all i:Int |i>=0 and i<Array.length
Array.length>=0
}

pred NoConflict() {
all idx: Int | lone Array.i2e[idx]
}
run NoConflict

assert repair_assert_1{
NoConflict
all i: Int | i>=0 and i<Array.length
}
check repair_assert_1

pred repair_pred_1{
NoConflict
all i: Int | i>=0 and i<Array.length
}
run repair_pred_1
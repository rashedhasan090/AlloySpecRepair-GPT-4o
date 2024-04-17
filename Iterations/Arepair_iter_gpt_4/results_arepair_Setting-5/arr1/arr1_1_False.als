sig Element {}
one sig Array {
    i2e: Int -> lone Element,
    length: Int
}

fact Reachable {
    Element = Array.i2e[Int]
}

fact InBound {
    all i: Int | i >= 0 and i < Array.length implies i in Array.i2e.Int
    Array.length >= 0
}

pred NoConflict() {
    no disj idx, idx2: Int | idx in Array.i2e.Int and idx2 in Array.i2e.Int and Array.i2e[idx] = Array.i2e[idx2]
}
run NoConflict

assert repair_assert_1{
    NoConflict
    all i: Int | i >= 0 and i < Array.length implies i in Array.i2e.Int
}
check repair_assert_1

pred repair_pred_1{
    NoConflict
    all i: Int | i >= 0 and i < Array.length implies i in Array.i2e.Int
}
run repair_pred_1

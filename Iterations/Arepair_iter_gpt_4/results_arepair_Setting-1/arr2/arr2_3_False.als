sig Element {}

one sig Array {
i2e: Int -> one Element,
length: Int
}

fact Reachable {
Element = Array.i2e[Int]
}

pred InBound {
all i: Int | i in Array.i2e.Int => (i >= 0 and i < Array.length)
Array.length = #Element
}

fact NoConflict {
all i: Int | i in Array.i2e.Int => #Array.i2e[i] = 1
}

run InBound for 3

assert repair_assert_1{
InBound <=> {
all i: Int | i in Array.i2e.Int => (i >= 0 and i < Array.length)
Array.length >= 0
}
}
check repair_assert_1

pred repair_pred_1{
InBound and {
all i: Int | i in Array.i2e.Int => (i >= 0 and i < Array.length)
Array.length >= 0
}
}
run repair_pred_1 for 3
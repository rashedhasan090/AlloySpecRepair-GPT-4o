sig Element {}

one sig Array {
    // Maps indexes to elements of Element.
    i2e: Int -> Element,
    // Represents the length of the array.
    length: Int
}

// Assume all elements are in the array.
fact Reachable {
    all e: Element | e in Array.i2e[Int]
}

fact InBound {
    // All indexes should be greater than or equal to 0 and less than the array length.
    all i: Int | i >= 0 and i < Array.length
    // Array length should be greater than or equal to 0.
    Array.length >= 0
}

pred NoConflict() {
    // Each index maps to at most one element.
    no disj idx1, idx2: Int, e: Element | idx1 in Array.i2e[e] and idx2 in Array.i2e[e]
}
run NoConflict

assert repair_assert_1{
    NoConflict
    all i: Int | i >= 0 and i < Array.length
}
check repair_assert_1

pred repair_pred_1{
    NoConflict
    all i: Int | i >= 0 and i < Array.length
}
run repair_pred_1
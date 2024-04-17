sig List {
header : set Node
}

sig Node {
link: set Node,
elem: set Int
}

// Correct
fact CardinalityConstraints {
all l: List | lone l.header
all n: Node | lone n.link
all n: Node | one n.elem
}

// Corrected Loop predicate
pred Loop(This: List) {
no This.header.link || one n: This.header.*link | n.link = n && n != n.link
}

// Corrected Sorted predicate
pred Sorted(This: List) {
all n: This.header.*link | one n.link && n.elem < n.link.elem
}

// Corrected assertion
assert repair_assert_1 {
all l: List | Sorted[l] <=> { all n: l.header.*link | some n.link => n.elem < n.link.elem }
}
check repair_assert_1

// Corrected repair_pred_1
pred repair_pred_1 {
all l: List | Sorted[l] <=> { all n: l.header.*link | some n.link => n.elem < n.link.elem }
}
run repair_pred_1

pred RepOk(This: List) {
Loop[This]
Sorted[This]
}

// Corrected Count predicate
pred Count(This: List, x: Int, result: Int) {
RepOk[This]
result = #{n: Node | n in This.header.*link && n.elem = x}
}

abstract sig Boolean {}
one sig True, False extends Boolean {}

// Correct
pred Contains(This: List, x: Int, result: Boolean) {
RepOk[This]
{some n: This.header.*link | n.elem = x} => result = True else result = False
}

fact IGNORE {
one List
List.header.*link = Node
}
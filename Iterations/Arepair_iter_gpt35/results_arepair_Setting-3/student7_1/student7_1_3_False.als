sig List { header: set Node }

sig Node { link: set Node, elem: set Int }

fact CardinalityConstraints { all l: List | #l.header <= 1 all n: Node | #n.link <= 1 all n: Node | #n.elem = 1 }

pred Loop(This: List) { all n: Node | n in This.header.link.^(link) #header > 0 }

pred Sorted(This: List) { all n: Node | n.elem <= n.link.elem }

assert repair_assert_1 { all l: List | Sorted[l] <=> { all n: l.header.*link | some n.link => n.elem <= n.link.elem }}

pred repair_pred_1 { all l: List | Sorted[l] <=> { all n: l.header.*link | some n.link => n.elem <= n.link.elem }}

run repair_pred_1

pred RepOk(This: List) { Loop[This] Sorted[This] }

pred Count(This: List, x: Int, result: Int) { RepOk[This] result = #(x.~(elem)) }

abstract sig Boolean {}
one sig True, False extends Boolean {}
pred Contains(This: List, x: Int, result: Boolean) { RepOk[This] some x.~(elem) => result = True else result = False }

fact IGNORE { one List List.header.*link = Node }
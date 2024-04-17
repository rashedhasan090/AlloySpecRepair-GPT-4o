one sig DLL { header: lone Node }

sig Node { pre, nxt: lone Node, elem: Int }

fact Reachable { Node = DLL.header.*nxt }

fact Acyclic { all n:DLL.header.*nxt | n !in n.^nxt }

pred UniqueElem() { #DLL.header.*nxt.elem = #Node }

pred Sorted() { all n:Node { n.nxt.elem > n.elem } }

pred ConsistentPreAndNxt() { all n1:Node | all n2:Node | n1.nxt = n2 <=> n2.pre = n1 }

pred RepOk() { UniqueElem Sorted ConsistentPreAndNxt }

assert repair_assert_1{ Sorted <=> all n : Node | some n.nxt => n.elem <= n.nxt.elem }

check repair_assert_1

pred repair_pred_1{ Sorted and all n : Node | some n.nxt => n.elem <= n.nxt.elem }

run repair_pred_1
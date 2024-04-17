one sig BinaryTree { root: lone Node }

sig Node { left, right: lone Node, elem: Int }

fact Reachable { Node = BinaryTree.root.*(left + right) }

fact Acyclic { all n:Node { n not in n.^(left + right) lone n.~(left + right) no n.left & n.right } }

pred Sorted() { all n:Node { all n2:n.^left | n2.elem < n.elem all n2:n.^right | n2.elem > n.elem } }

pred HasAtMostOneChild(n:Node) { #n.(left+right) <= 1 }

fun Depth(n: Node): one Int { #n.*~(left+right) }

pred Balanced() { all n1, n2: Node { (HasAtMostOneChild[n1] && HasAtMostOneChild[n2]) <=> (mul[signum[minus[Depth[n1], Depth[n2]]], minus[Depth[n1], Depth[n2]]] <= 1) } }

assert repair_assert_1{ Sorted <=> { all n:Node { all n2: n.right.*(left + right) | n2.elem < n.elem all n2: n.right.*(left + right) | n2.elem > n.elem } } }
check repair_assert_1

pred repair_pred_1{ Sorted <=> { all n:Node { all n2: n.right.*(left + right) | n2.elem < n.elem all n2: n.right.*(left + right) | n2.elem > n.elem } } }
run repair_pred_1
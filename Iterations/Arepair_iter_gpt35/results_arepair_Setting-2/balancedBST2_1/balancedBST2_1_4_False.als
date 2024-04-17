one sig BinaryTree { root: lone Node }
sig Node { left, right: lone Node, elem: Int }
fact Reachable { Node = BinaryTree.root.*(left + right) }
fact Acyclic { all n : Node { n !in n.^(left + right) lone n.~(left + right) no n.(left) & n.(right) } }
pred Sorted() { all n: Node { some n.left => n.left.elem<n.elem some n.right => n.right.elem>n.elem } }
pred HasAtMostOneChild(n: Node) { lone n.(left+right) }
fun Depth(n: Node): one Int { #{n.*~(left + right)} }
pred Balanced() { all n1, n2: Node { (HasAtMostOneChild[n1] && HasAtMostOneChild[n2]) => (let diff = minus[Depth[n1], Depth[n2]] | -1 <= diff && diff <= 1) } }
assert repair_assert_1{ Sorted <=> all n: Node { {all nl: n.left.*(left + right) | nl.elem < n.elem} and {all nr: n.right.*(left + right) | nr.elem > n.elem} } }
check repair_assert_1
pred repair_pred_1{ Sorted <=> all n: Node { {all nl: n.left.*(left + right) | nl.elem < n.elem} and {all nr: n.right.*(left + right) | nr.elem > n.elem} } }
run repair_pred_1
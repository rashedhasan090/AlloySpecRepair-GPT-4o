pred acyclicOK {
all a:Node | a not in a.^adj
}
assert acyclicRepaired {
acyclic[]  iff acyclicOK[]
}
run acyclicRepaired

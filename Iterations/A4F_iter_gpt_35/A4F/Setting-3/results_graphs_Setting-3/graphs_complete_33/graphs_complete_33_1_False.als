sig Node { adj : set Node }
pred stonglyConnected {
all n:Node | Node in n.*^adj
}
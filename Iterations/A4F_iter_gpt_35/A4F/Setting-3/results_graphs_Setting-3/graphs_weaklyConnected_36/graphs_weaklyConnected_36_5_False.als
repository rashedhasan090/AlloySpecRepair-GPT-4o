sig Node { adj: set Node } pred weaklyConnected { all n1, n2: Node | n2 in n1.*(adj + ~adj) }
sig Node { adj : set Node } pred weaklyConnected { all n:Node | Node in (n.adj + n.^adj).*adj } pred weaklyConnectedOK { all n:Node | Node in (n.adj + n.^adj).*adj }
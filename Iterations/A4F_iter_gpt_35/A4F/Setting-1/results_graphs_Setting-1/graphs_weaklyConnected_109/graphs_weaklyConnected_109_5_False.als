sig Node { adj : set Node } pred weaklyConnected { all x : Node | x in x.*(adj+~adj) }
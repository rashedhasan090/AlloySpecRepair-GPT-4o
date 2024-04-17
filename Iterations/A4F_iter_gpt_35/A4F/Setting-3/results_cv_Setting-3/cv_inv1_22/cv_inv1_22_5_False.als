abstract sig Source {} sig User extends Source { profile : set Work, visible : set Work } sig Institution extends Source {} sig Id {} sig Work { ids : some Id, source : one Source } pred inv1 { // The works publicly visible in a curriculum must be part of its profile all u:User | u.visible in u.profile } pred inv2 { // A user profile can only have works added by himself or some external institution all u:User, w:Work | w in u.profile implies (u in w.source or some i:Institution | i in w.source) } pred inv3 { // The works added to a profile by a given source cannot have common identifiers all w1, w2 : Work, u : User | w1 != w2 and (w1 + w2) in u.profile and (w1.source = w2.source) implies no w1.ids & w2.ids } assert inv1_Repaired { inv1[] iff inv1_OK[] } check inv1_Repaired expect 0
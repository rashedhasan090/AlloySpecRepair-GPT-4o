pred inv12_OK { all t : Teacher | some (t.Teaches).Groups } assert inv12_Repaired { inv12[] iff inv12_OK[] }
pred inv7_OK { all c:Class | some c.Teaches } assert inv7_Repaired { inv7[] iff inv7_OK[] }
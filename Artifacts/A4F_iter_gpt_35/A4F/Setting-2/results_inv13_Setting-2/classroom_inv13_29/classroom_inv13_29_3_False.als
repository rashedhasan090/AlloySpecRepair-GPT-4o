pred inv13_OK { Tutors.Person in Teacher and Person.Tutors in Student } assert inv13_Repaired { inv13[] iff inv13_OK[] }
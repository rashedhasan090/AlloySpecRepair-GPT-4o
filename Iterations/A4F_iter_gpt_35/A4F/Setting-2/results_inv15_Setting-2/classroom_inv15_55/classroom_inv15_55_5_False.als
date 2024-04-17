sig Person  { Tutors : set Person, Teaches : set Class }
sig Group {}
sig Class  { Groups : Person -> Group }
sig Teacher extends Person {}
sig Student extends Person {}
pred inv1 { Person in Student }
pred inv2 { no Teacher }
pred inv3 { no Student & Teacher }
pred inv4 { Person in (Student + Teacher) }
pred inv5 { some Teacher.Teaches }
pred inv6 { Teacher in Teaches.Class }
pred inv7 { Class in Teacher.Teaches }
pred inv8 { all t:Teacher | lone t.Teaches }
pred inv9 { all c:Class | lone Teaches.c & Teacher }
pred inv10 { all c:Class, s:Student | some s.(c.Groups) }
pred inv11 { all c : Class | (some c.Groups) implies some Teacher & Teaches.c }
pred inv12 { all t : Teacher | some (t.Teaches).Groups }
pred inv13 { Tutors.Person in Teacher and Person.Tutors in Student }
pred inv14 { all s : Person, c : Class, t : Person, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors }
pred inv15 { all x, y, z : Person | x->y in Tutors and y->z in Tutors and z->x in Tutors implies x in Teacher }

pred inv15_OK { all s : Person | some Teacher & ^Tutors.s }
assert inv15_Repaired { inv15[] iff inv15_OK[] }
check inv15_Repaired expect 0
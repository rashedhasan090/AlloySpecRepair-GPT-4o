sig Person { Tutors: set Person, Teaches: set Class } sig Group {} sig Class { Groups: Person -> Group } sig Teacher extends Person {} sig Student extends Person {} pred inv1 { Person in Student } pred inv2 { no Teacher } pred inv3 { no Student & Teacher } pred inv4 { Person in (Student + Teacher) } pred inv5 { some Teacher.Teaches } pred inv6 { Teacher in Teaches.Class } pred inv7 { Class in Teacher.Teaches } pred inv8 { all t: Teacher | lone t.Teaches } pred inv9 { all c: Class | lone c.Groups & Teacher } pred inv10 { all c: Class, s: Student | some s.(c.Groups) } pred inv11 { all c: Class | (some c.Groups) implies some Teacher & Teaches.c } pred inv12 { all t: Teacher | some (t.Teaches).Groups } pred inv13 { all s: Student, t: Teacher | s not in Person.^Tutors and t not in Person.^Tutors } pred inv14 { all s: Person, c: Class, t: Person, g: Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors } pred inv15 { all s: Person | some Teacher & ^Tutors.s } assert inv1_Repaired { inv1[] iff Person in Student } assert inv2_Repaired { inv2[] iff no Teacher } assert inv3_Repaired { inv3[] iff no Student & Teacher } assert inv4_Repaired { inv4[] iff Person in (Student + Teacher) } assert inv5_Repaired { inv5[] iff some Teacher.Teaches } assert inv6_Repaired { inv6[] iff Teacher in Teaches.Class } assert inv7_Repaired { inv7[] iff Class in Teacher.Teaches } assert inv8_Repaired { inv8[] iff all t: Teacher | lone t.Teaches } assert inv9_Repaired { inv9[] iff all c: Class | lone c.Groups & Teacher } assert inv10_Repaired { inv10[] iff all c: Class, s: Student | some s.(c.Groups) } assert inv11_Repaired { inv11[] iff all c: Class | (some c.Groups) implies some Teacher & Teaches.c } assert inv12_Repaired { inv12[] iff all t: Teacher | some (t.Teaches).Groups } assert inv13_Repaired { inv13[] iff all s: Student, t: Teacher | s not in Person.^Tutors and t not in Person.^Tutors } assert inv14_Repaired { inv14[] iff all s: Person, c: Class, t: Person, g: Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors } assert inv15_Repaired { inv15[] iff all s: Person | some Teacher & ^Tutors.s } check inv1_Repaired expect 0 check inv2_Repaired expect 0 check inv3_Repaired expect 0 check inv4_Repaired expect 0 check inv5_Repaired expect 0 check inv6_Repaired expect 0 check inv7_Repaired expect 0 check inv8_Repaired expect 0 check inv9_Repaired expect 0 check inv10_Repaired expect 0 check inv11_Repaired expect 0 check inv12_Repaired expect 0 check inv13_Repaired expect 0 check inv14_Repaired expect 0 check inv15_Repaired expect 0
sig Person  { Tutors : set Person, Teaches : set Class } sig Group {} sig Class  { Groups : Person -> Group } sig Teacher extends Person {} sig Student extends Person {} pred inv1 { Person in Student } pred inv2 { no Teacher } pred inv3 { no Student & Teacher } pred inv4 { Person in (Student + Teacher) } pred inv5 { some Teacher.Teaches } pred inv6 { Teacher in Teaches.Class } pred inv7 { Class in Teacher.Teaches } pred inv8 { all t:Teacher | lone t.Teaches } pred inv9 { all c:Class | lone c.Groups & Teacher } pred inv10 { all c:Class, s:Student | some s.(c.Groups) } pred inv11 { all c : Class | (some c.Groups) implies some Teacher & Teaches.c } pred inv12 { all t : Teacher | some (t.Teaches).Groups } pred inv13 { Tutors.Person in Teacher and Person.Tutors in Student } pred inv14 { all s : Person, c : Class, t : Person, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors } pred inv15 { all s : Person | some Teacher & ^Tutors.s } assert inv1_Repaired { inv1[] } assert inv2_Repaired { inv2[] } assert inv3_Repaired { inv3[] } assert inv4_Repaired { inv4[] } assert inv5_Repaired { inv5[] } assert inv6_Repaired { inv6[] } assert inv7_Repaired { inv7[] } assert inv8_Repaired { inv8[] } assert inv9_Repaired { inv9[] } assert inv10_Repaired { inv10[] } assert inv11_Repaired { inv11[] } assert inv12_Repaired { inv12[] } assert inv13_Repaired { inv13[] } assert inv14_Repaired { inv14[] } assert inv15_Repaired { inv15[] } check inv1_Repaired check inv2_Repaired check inv3_Repaired check inv4_Repaired check inv5_Repaired check inv6_Repaired check inv7_Repaired check inv8_Repaired check inv9_Repaired check inv10_Repaired check inv11_Repaired check inv12_Repaired check inv13_Repaired check inv14_Repaired check inv15_Repaired
sig Person { Tutors: set Person, Teaches: set Class } sig Group {} sig Class { Groups: Person -> Group } sig Teacher extends Person {} sig Student extends Person {} pred inv1 { Person in Student } pred inv2 { no Teacher } pred inv3 { no Student & Teacher } pred inv4 { Person in (Student + Teacher) } pred inv5 { some Teacher.Teaches } pred inv6 { Teacher in Teaches.Class } pred inv7 { all c: Class | c.Groups.Person in Teacher.Teaches } pred inv8 { all t: Teacher | lone t.Teaches } pred inv9 { all c: Class | lone c.Groups.Person & Teacher } pred inv10 { all c: Class, s: Student | some s.(c.Groups) } pred inv11 { all c: Class | (some c.Groups) implies some Teacher & Teaches.c } pred inv12 { all t: Teacher | some (t.Teaches).Groups } pred inv13 { Person.Tutors in Teacher and Tutors.Person in Student } pred inv14 { all s: Person, c: Class, t: Person, g: Group | (c.Groups.s -> g) and t -> c in Teaches implies t -> s in Tutors } pred inv15 { all s: Person | some Teacher & ^Tutors.s } assert inv1_valid { all p: Person | p in Student } assert inv2_valid { no Teacher } assert inv3_valid { no Student & Teacher } assert inv4_valid { all p: Person | p in Student or p in Teacher } assert inv5_valid { some Teacher.Teaches } assert inv6_valid { all t: Teacher | t in Teaches.Class } assert inv7_valid { all c: Class | c.Groups.Person in Teacher.Teaches } assert inv8_valid { all t: Teacher | lone t.Teaches } assert inv9_valid { all c: Class | lone c.Groups.Person & Teacher } assert inv10_valid { all c: Class, s: Student | some s.(c.Groups) } assert inv11_valid { all c: Class | (some c.Groups) implies some Teacher & Teaches.c } assert inv12_valid { all t: Teacher | some (t.Teaches).Groups } assert inv13_valid { Person.Tutors in Teacher and Tutors.Person in Student } assert inv14_valid { all s: Person, c: Class, t: Person, g: Group | (c.Groups.s -> g) and t -> c in Teaches implies t -> s in Tutors } assert inv15_valid { all s: Person | some Teacher & ^Tutors.s } check inv1_valid check inv2_valid check inv3_valid check inv4_valid check inv5_valid check inv6_valid check inv7_valid check inv8_valid check inv9_valid check inv10_valid check inv11_valid check inv12_valid check inv13_valid check inv14_valid check inv15_valid
sig Person { Tutors: set Person, Teaches: set Class } sig Group {} sig Class { Groups: Person -> Group } sig Teacher extends Person {} sig Student extends Person {} pred inv8 { all t:Teacher | lone t.Teaches } assert repair_assert_1 { inv8[] iff inv8_OK[] }
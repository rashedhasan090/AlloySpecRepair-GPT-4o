sig Person  { Tutors : set Person, Teaches : set Class } sig Group {} sig Class  { Groups : Person -> Group } sig Teacher extends Person  {} sig Student extends Person  {} pred inv3 { all p:Person | p in (Student + Teacher) }
sig Person { Tutors: set Person, Teaches: set Class } sig Group {} sig Class { Groups: Person -> Group } sig Teacher extends Person {} sig Student extends Person {} pred inv3 { no Student & Teacher } pred repair_pred_1{ no Student & Teacher iff no Student & Teacher }
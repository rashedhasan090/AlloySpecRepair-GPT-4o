pred inv14 { all c:Class,s:Student,t:Teacher | some s.(c.Groups) and some t.(c.Groups) implies t in s.^~Tutors }
pred inv14 {
all s : Person, c : Class, t : Person, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors
}

pred inv14_OK {
all s : Student, c : Class, t : Teacher, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors
}
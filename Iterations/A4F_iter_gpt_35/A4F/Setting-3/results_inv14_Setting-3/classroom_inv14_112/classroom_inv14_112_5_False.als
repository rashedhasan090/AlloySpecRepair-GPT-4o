pred inv14_OK { all s : Person, c : Class, t : Teacher, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors }
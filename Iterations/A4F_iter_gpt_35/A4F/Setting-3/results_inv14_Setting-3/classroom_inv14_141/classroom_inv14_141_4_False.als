pred inv14_OK {
all s : Person, c : Class, t : Person, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors
}
assert repair_assert_1{inv14[] iff inv14_OK[] }
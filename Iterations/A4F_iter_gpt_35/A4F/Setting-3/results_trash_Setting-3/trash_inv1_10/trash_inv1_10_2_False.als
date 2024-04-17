sig File { link: set File }
sig Trash extends File {}
sig Protected extends File {}
pred inv1 { no File }
pred inv2 { all f: Trash | f in File }
pred inv3 { some Trash }
pred inv4 { no Protected & Trash }
pred inv5 { all f: Trash | f not in Protected }
pred inv6 { ~link.link in iden }
pred inv7 { no link.Trash }
pred inv8 { no link }
pred inv9 { no link.link }
pred inv10 { Trash.link in Trash }
pred inv1_OK { no Trash }
pred inv2_OK { all f: Trash | f in File }
pred inv3_OK { some Trash }
pred inv4_OK { no Protected & Trash }
pred inv5_OK { all f: Trash | f not in Protected }
pred inv6_OK { ~link.link in iden }
pred inv7_OK { no link.Trash }
pred inv8_OK { no link }
pred inv9_OK { no link.link }
pred inv10_OK { Trash.link in Trash }
assert inv1_Repaired { inv1[] iff inv1_OK[] }
assert inv2_Repaired { inv2[] iff inv2_OK[] }
assert inv3_Repaired { inv3[] iff inv3_OK[] }
assert inv4_Repaired { inv4[] iff inv4_OK[] }
assert inv5_Repaired { inv5[] iff inv5_OK[] }
assert inv6_Repaired { inv6[] iff inv6_OK[] }
assert inv7_Repaired { inv7[] iff inv7_OK[] }
assert inv8_Repaired { inv8[] iff inv8_OK[] }
assert inv9_Repaired { inv9[] iff inv9_OK[] }
assert inv10_Repaired { inv10[] iff inv10_OK[] }
check inv1_Repaired expect 0
check inv2_Repaired expect 0
check inv3_Repaired expect 0
check inv4_Repaired expect 0
check inv5_Repaired expect 0
check inv6_Repaired expect 0
check inv7_Repaired expect 0
check inv8_Repaired expect 0
check inv9_Repaired expect 0
check inv10_Repaired expect 0
pred repair_pred_1 { inv1[] iff inv1_OK[] }
run repair_pred_1
assert repair_assert_1 { inv1[] iff inv1_OK[] }
check repair_assert_1
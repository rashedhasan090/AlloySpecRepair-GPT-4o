sig File { link: set File }
sig Trash extends File {}
sig Protected extends File {}
pred inv1 { no Trash }
pred inv2 { File in Trash }
pred inv3 { some Trash }
pred inv4 { no Protected & Trash }
pred inv5 { File - Protected in Trash }
pred inv6 { ~link.link in iden }
pred inv7 { all f: File | no link.f }
pred inv8 { no link }
pred inv9 { no link.link }
pred inv10 { Trash.link in Trash }
pred inv7_OK { no link.Trash }
assert inv7_Repaired { inv7[] iff inv7_OK[] }
pred repair_pred_1 { inv7[] iff inv7_OK[] }
run repair_pred_1
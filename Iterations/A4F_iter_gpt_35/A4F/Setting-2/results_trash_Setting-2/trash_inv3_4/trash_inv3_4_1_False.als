sig File { link: set File } sig Trash extends File {} sig Protected extends File {} pred inv1 { no Trash } pred inv2 { File in Trash } pred inv3 { one Trash } pred inv4 { no Protected & Trash } pred inv5 { File - Protected in Trash } pred inv6 { ~link.link in iden } pred inv7 { no link.Trash } pred inv8 { no link } pred inv9 { no link.link } pred inv10 { Trash.link in Trash } pred inv3_OK { some Trash } assert inv3_Repaired { inv3[] iff inv3_OK[] } pred repair_pred_1 { inv3[] iff inv3_OK[] } run repair_pred_1
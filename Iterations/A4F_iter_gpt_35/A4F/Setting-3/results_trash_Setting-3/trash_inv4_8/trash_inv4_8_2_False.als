sig File { link: set File } sig Trash extends File {} sig Protected extends File {} pred inv4 { Protected in File - Trash } pred inv5 { Trash in File }
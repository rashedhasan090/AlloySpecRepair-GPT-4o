sig Class { ext: lone Class } one sig Object extends Class {} pred ObjectNoExt() { no Object.ext } pred Acyclic() { no c: Class | c = c.ext } pred AllExtObject() { all c: Class - Object | Object in c.^ext } pred ClassHierarchy() { ObjectNoExt Acyclic AllExtObject } run ClassHierarchy for 3 assert repair_assert_1{ Acyclic <=> no c: Class | c in c.^ext } check repair_assert_1 pred repair_pred_1{ Acyclic and no c: Class | c in c.^ext } run repair_pred_1
import Foundation

var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi", "One"])

var newSetExclusiveOr = mySet1.symmetricDifference(mySet2)
mySet1.formSymmetricDifference(mySet2)


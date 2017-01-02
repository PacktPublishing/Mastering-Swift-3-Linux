import Foundation
class TestClass {
    typealias getNumClosure = ((Int, Int) -> Int)
    
    var numOne = 5
    var numTwo = 8
    
    var results = 0;
    
    func getNum(handler: getNumClosure) -> Int {
        results = handler(numOne,numTwo)
        print("Number to Use:  \(results)")
        return results
    }
}



var max: TestClass.getNumClosure = {
    if $0 > $1 {
        return $0
    } else {
        return $1
    }
}

var min: TestClass.getNumClosure = {
    if $0 < $1 {
        return $0
    } else {
        return $1
    }
}

var multiply:  TestClass.getNumClosure = {
    return $0 * $1
}

var second: TestClass.getNumClosure = {
    return $1
}

var answer: TestClass.getNumClosure = {
    var tmp = $0 + $1
    return 42
}



var myClass = TestClass()

myClass.getNum(handler: max)
myClass.getNum(handler: min)
myClass.getNum(handler: multiply)
myClass.getNum(handler: second)
myClass.getNum(handler: answer)





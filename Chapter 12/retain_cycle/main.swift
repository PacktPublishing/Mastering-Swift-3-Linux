import Foundation

class TestClassOne {
    typealias nameClosure = (() -> String)
    
    var name = "Jon"
    
    lazy var myClosure: nameClosure =  {
        [unowned self] in
        return self.name
    }
    
    deinit {
        print("TestClassOne deinitialized")
    }
}



class TestClassTwo {
    
    func closureExample(_ handler: TestClassOne.nameClosure) {
        print(handler())
    }
    
    deinit {
        print("TestClassTwo deinitialized")
    }
}

var testClassOne: TestClassOne? = TestClassOne()
var testClassTwo: TestClassTwo? = TestClassTwo()
        
testClassTwo?.closureExample(testClassOne!.myClosure)
        
testClassOne = nil
print("testClassOne is gone")
        
testClassTwo = nil
print("testClassTwo is gone")


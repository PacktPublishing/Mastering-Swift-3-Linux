import Foundation
class TestClass {
    typealias ResultsClosure = ((String) -> Void)

    func isGreater(numOne: Int, numTwo:Int, successHandler: ResultsClosure, failureHandler: ResultsClosure) {
        if numOne > numTwo {
            successHandler("\(numOne) is greater than \(numTwo)")
        } else {
            failureHandler("\(numOne) is not greater than \(numTwo)")
        }

    }
}

var success: TestClass.ResultsClosure = {
    print("Success: \($0)")
}

var failure: TestClass.ResultsClosure = {
    print("Failure: \($0)")
}

var test = TestClass()
test.isGreater(numOne: 6, numTwo: 8, successHandler:success, failureHandler:failure)




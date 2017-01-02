import Foundation
var myOptional: String?

if let temp = myOptional {
    print(temp)
    print("Cannot use temp outside of this context")
} else {
    print("myOptional is nil")
}


import Foundation
func sayHello(greeting: String, names: String...) {
    for name in names {
        print("\(greeting) \(name)")
    }
}


sayHello(greeting: "Hello", names: "Jon","Kim")


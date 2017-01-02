import Glibc
import Foundation
import Dispatch

class DispatchOnce: NSObject {
    private lazy var _once: () = {
            print("Printed only on the first call")
        }()
    var token: Int = 0
    func example() {
        _ = self._once
        print("Printed for each call")
    }
   
}

let dPatchOnce = DispatchOnce()
for _ in 0..<4 {
    dPatchOnce.example()
}


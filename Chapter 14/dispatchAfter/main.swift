import Glibc
import Foundation
import Dispatch

func performCalculation(_ iterations: Int, tag: String) {
print("starting \(tag)")
    let start = Date()
    for _ in 0 ..< iterations {
        doCalc()
    }
    let end = Date()
    let elapseTime = end.timeIntervalSince(start)
    print("time for \(tag):  \(elapseTime)")
}
    
func doCalc() {
    let x=100
    let y = x*x
    _ = y/x
}

        
let squeue = DispatchQueue(label: "squeue.hoffman.jon")
        
let delayInSeconds = 2.0
let pTime = DispatchTime.now() + Double(Int64(delayInSeconds * Double(1000000))) / Double(1000000)
squeue.asyncAfter(deadline: pTime) {
    print("Times Up")
}
        
squeue.sync {
    performCalculation(100000, tag: "1-------dispatch after sync1")
}


print("press enter to exit")
let _ = readLine(strippingNewline: true)

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
        
let s = {performCalculation(100000, tag: "sync1")}
squeue.async (execute: s)
        
squeue.async {
    performCalculation(1000, tag: "sync2")
}
squeue.async {
    performCalculation(100000, tag: "sync3")
}

print("press enter to exit")
let _ = readLine(strippingNewline: true)

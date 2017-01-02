import Glibc
import Foundation
import Dispatch

func performCalculation(_ iterations: Int, tag: String) {
	print("Starting \(tag)")
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



let cqueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes: .concurrent)

let c = {performCalculation(10000000, tag: "async1")}
cqueue.async(execute: c)

cqueue.async {
print("in 2")
   performCalculation(1000, tag: "async2")
}
cqueue.async {
   performCalculation(100000, tag: "async3")
}
      
print("press enter to exit")
let _ = readLine(strippingNewline: true) 

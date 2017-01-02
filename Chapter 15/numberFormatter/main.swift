import Glibc
import Foundation

let formatter1 = NumberFormatter()
formatter1.numberStyle = .currency
if let num1 = formatter1.string(from: 23.99) {
  print(num1)
}

let formatter2 = NumberFormatter()
formatter2.numberStyle = .decimal
formatter2.maximumFractionDigits = 2
if let num2 = formatter2.string(from: 23.2357) {
  print(num2)
}


let formatter3 = NumberFormatter()
formatter3.numberStyle = .spellOut
if let num3 = formatter3.string(from: 2015) {
  print(num3)
}


let formatter4 = NumberFormatter()
formatter4.numberStyle = .scientific
if let num4 = formatter4.string(from: 2345678) {
  print(num4)
}
 


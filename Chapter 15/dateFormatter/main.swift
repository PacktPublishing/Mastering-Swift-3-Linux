import Glibc
import Foundation

let now = Date()

let formatter = DateFormatter()
formatter.dateStyle = .medium
formatter.timeStyle = .medium

let dateStr = formatter.string(from: now)
print(dateStr)

let formatter2 = DateFormatter()
formatter2.dateFormat = "YYYY-MM-dd HH:mm:ss"

let dateStr2 = formatter2.string(from: now)
print(dateStr2)

let dateStr3 = "2016-08-19 16:32:02"
if let date = formatter2.date(from: dateStr3) {
 print(date)
}


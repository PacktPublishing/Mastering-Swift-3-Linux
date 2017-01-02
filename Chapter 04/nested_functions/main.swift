import Foundation
func sort( numbers: inout [Int]) {
    func reverse( first: inout Int, second: inout Int) {
        let tmp = first
        first = second
        second = tmp
    }
    
    var count = numbers.count
    
    while count > 0 {
        for var i in 1..<count {
            if numbers[i] < numbers[i-1] {
                reverse(first: &numbers[i], second: &numbers[i-1])
            }
        }
        count -= 1
    }
}


var nums = [6,2,5,3,1]

sort(numbers: &nums)
for num in nums {
    print(num)
}




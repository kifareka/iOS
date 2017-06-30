 import UIKit

var array = [Int]()
var result: Double = 0
while array.count < 200 {
    array.append(Int(arc4random_uniform(10)))
    result += Double(array.last!)
}
result /= Double(array.count)
print(result)

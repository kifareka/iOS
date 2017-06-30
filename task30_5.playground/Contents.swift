
import UIKit

let str = "HeyOk"
var set = Set(str.lowercased().characters)
if str.characters.count == set.count {
    print(true)
} else {
    print(false)
}


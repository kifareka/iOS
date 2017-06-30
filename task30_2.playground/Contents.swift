//: Playground - noun: a place where people can play

import UIKit

var result = ""
var numberWords = ["one", "two", "three", "four", "five", "six"]
for findString in numberWords  {
    findString.characters.count > result.characters.count ? result = findString : print("")
}
print(result)

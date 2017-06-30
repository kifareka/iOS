
import UIKit

var polindrom = "поп"
var reversedPalindrom = String(polindrom.characters.reversed())
let checkPolindrom = polindrom.uppercased()
let checkReverse = reversedPalindrom.uppercased()
if checkPolindrom == checkReverse{
    print ("Это палиндром")
}else{
    print ("Это не палиндром")
}

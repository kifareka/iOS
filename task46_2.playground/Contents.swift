//: Playground - noun: a place where people can play

import UIKit

var vowels: [String] = []
var consonants: [String] = []
var other: [String] = []
let array: [Character] = ["a","b","d",",","%"]
for char in array {
    switch char {
    case "a", "e", "i", "o", "u":
        vowels.append(String(char))
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
         "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        consonants.append(String(char))
    default:
        other.append(String(char))
    }
}
vowels
consonants
other

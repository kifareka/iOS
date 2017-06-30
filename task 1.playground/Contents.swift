let somestr = "smth"
var flag = true
for character in somestr.characters {
    flag = flag * somestr.characters(character) == 1
}
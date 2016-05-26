//: Playground - noun: a place where people can play
import UIKit

//array

//let array: [String] x
let array = ["dsds", "dsfs"]
var array1 = Array.init(count: 10, repeatedValue: "A")
array1 += ["B", "B"]
array1.append("C")
array1.insert("T", atIndex: 5)
array1.removeFirst(10)
let lastElement = array1.removeLast()

array1[1...2] = ["A", "B"]
array1

for (index, value) in array1.enumerate() {
    if value == "B" {
        print("ok - index \(index)")
    }
}

if array1.count == 0 {
    
}
if array1.isEmpty {
    
}

array1.contains("B")


//let dict = [Int: String]()
var dict = [1: "one", 2: "two"]
dict[3] = "dd"

for (_, value) in dict {
    print(value)
}

let arrayValue = dict.keys

dict.removeValueForKey(3)
dict.updateValue("1", forKey: 1)
let test = dict.dropFirst()
test

//switch
let valuer = 10

switch valuer {
case 5..<8: print("5")
case 9: print("6")
case 10..<22: print("7")
default: print("no")
}

let tup = ("Anna", 26)
switch tup {
case let (x, y) where x == "Anna" && y >= 25: print("age \(y)")
case (_, _): print("text")
}

let str: AnyObject = "rrr"

switch str {
case is String: print("int"); fallthrough
case is String: print("string")
default: print("unknow")
}

//if str is String {
//    print("good")
//}

enum Num {
    case One
    case Two
}

let en = Num.One

//switch en {
//case .One: print("test")
//case .Two: print("test")
//}

//enum Num1: String {
//    case One(Int) = "One"
//    case Two = "Two"
//}
//
//let en1 = Num1.One.rawValue


//Function
func printNum(num: Int, str: String) {
    print("test - \(num)")
}

func printNum(num: Int) -> String {
    return " "
}

printNum(2, str: "ds")

var a = 10
print(a)
func test(a: Int) {
    let a = 10
}

test(a)
print(a)

func tup1() -> Int? {
    let bbb: Int? = 5
    return bbb
}

let tuple11 = tup1()







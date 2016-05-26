//: Playground - noun: a place where people can play

import UIKit

//clouser

//map reduse filter

var array = [1,2,3,5]
func getResult(value: Int) -> Bool {
    return true
}

let newArray = array.map{$0 * 2}.map{$0 + 3}
let newFil = array.filter{getResult($0)}
let newReduce = array.reduce(0, combine: +)

func combinator(accumulator: Int, current: Int) -> Int {
    return accumulator + current
}

for value in newFil {
    print(value)
}

//class i structure
struct StrucMan {
    var firstName: String
    let lastName: String
}

let str = StrucMan(firstName: "ALEX", lastName: "SDD")
var str1 = str
str1.firstName = "A"
str.firstName


class ClasMan55 {
    var firstName: String
    var lastName = ""
    let age: Int
    
    static var hey = "Privet"
    lazy var laz = "Lazy"
    
    func move() {
        print("move")
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = 55
    }
    
    init() {
        self.firstName = "A"
        self.lastName = "B"
        self.age = 55
    }
}

let tt = ClasMan55.hey

let clas = ClasMan55()
print(clas.laz)
clas.move()
let clas1 = clas
clas1.firstName = "dsfds"
clas.firstName

class StepCounter {
    var totalSteps = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")

        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

let tes = StepCounter()
tes.totalSteps = 10
var newS = Rect(origin: Point(x: 1, y: 3), size: Size(width: 4, height: 8))
print(newS.center)

newS.center = Point(x: 10, y: 10)

//8 6
//static lazy class func

enum Test {
    static var l = "fsdfds"
    mutating func change() {
        if self == .One {
            self = Two
        } else {
            self = .One
        }
    }
    
    case One
    case Two
}

var get = Test.One
get.change()
print(get)







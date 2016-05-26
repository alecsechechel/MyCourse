//: Playground - noun: a place where people can play

import UIKit

//иницилизатор
class Super {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
}

class Man: Super {
    var name: String
    
    override init(age: Int) {
        self.name = "super"
        super.init(age: age + 10)
    }
    
    init(name: String, age: Int) {
        self.name = name
        super.init(age: age)
    }
    
    init(name: String, lastName: String) {
        self.name = name + lastName
        super.init(age: 10)
    }
    
    
//    convenience init() {
//        self.name = "sd"
//        self.age = 4
//    }
}

class Food {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    init(name: String, fullname: String) {
        self.name = name + " " + fullname
    }
    
    required convenience init() {
        self.init(name: "[Unnamed]")
    }
    
    convenience init(fullname: String) {
        self.init(name: "[Unnamed]", fullname: fullname)
    }
}

class Apple: Food {
    var sort: String
    
    init(sort: String) {
        self.sort = sort
        super.init(name: "apple")
    }
    
    required init(name: String) {
        fatalError("init(name:) has not been implemented")
    }
    
    required convenience init() {
        fatalError("init() has not been implemented")
    }
}

let apple = Apple(sort: "dfsa")



let man = Man(name: "Man", age: 24)
man.age
let man1 = Man(name: "Man", lastName: "ds")
man1.name
man.name

struct Animal {
    let species: String
    init!(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let animal = Animal(species: "")
animal.species



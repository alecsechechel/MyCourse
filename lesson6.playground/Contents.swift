//: Playground - noun: a place where people can play

import UIKit

//protocol

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: AnotherProtocol {
    static var someTypeProperty: Int {
        return 11
    }
}









//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
//var arrayOfInts: Array<Int>
var arrayOfInts: [Int]
//var dictionaryOfCapitalsByCountry: Dictionary<String, String>
var dictionaryOfCapitalsByCountry: [String:String]
var winningLotteryNumbers: Set<Int>

let number = 41
let meaningOfLife = String(number)

let fmStation = 91.1


var countingUp = ["one", "two"]
let secondElement = countingUp[1]
countingUp.count

countingUp.append("three")


let nameByParkingSpace = [13: "Alice", 27: "Cloud"]

for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

//let space13Assignee = nameByParkingSpace[13]
let space42Assignee = nameByParkingSpace[42]
if let space13Assignee = nameByParkingSpace[13] {
    print("Key 13 is Assigned in the dictionary")
}

let emptyString = String()
emptyString.isEmpty

let emptyOfArrayInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()

let availableRooms = Set([205, 406, 707])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14



var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.7
//reading3 = 2.7

//let avgReading = (reading1! + reading2! + reading3!)/3
if let r1 = reading1, let r2 = reading2, let r3 = reading3 {
    let avgReading = (r1 + r2 + r3) / 3
}else {
    let errorString = "Instrument reported a reading that is a nil"
}

enum PieType: Int {
    case Apple = 0
    case Cherry
    case Pecan
}

//  pieRawValue is a Int type which has 2
let pieRawValue = PieType.Pecan.rawValue

if let pieType = PieType(rawValue: pieRawValue) {
    
}

let favoritePie = PieType.Apple

let name: String
switch favoritePie {
case .Apple:
    name = "Apple"
case .Cherry:
    name = "Cherry"
case .Pecan:
    name = "Pecan"
}


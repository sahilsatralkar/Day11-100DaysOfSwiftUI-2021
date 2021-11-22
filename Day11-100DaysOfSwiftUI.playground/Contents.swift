import UIKit

var greeting = "Hello, playground"


//Structs part 2
//Access control
//private - Dont let anything outside the struct user this
//fileprivate- Dont let anything outside the current file use this
//public- let anyone ,anywhere use this
//private(set) - from outside you can only read, modification is only internally

struct School {
    static var studentCount : Int = 0
    static func addStudent(name: String) {
        print("Welcome, \(name)")
        studentCount += 1
    }
}

School.addStudent(name: "Rami Malek")
print(School.studentCount)

struct Constants {
    static let apiKey = "12345"
}

struct Employee {
    let name : String
    let id: String
    
    static let employeeExample = Employee(name: "Narayana Murthy", id: "9")
}
print(Employee.employeeExample)

//Checkpoint 6

struct CarInfo {
    let model : String
    let numberOfSeat: Int
    private var currentGear : Int = 1
    
    mutating func changeGear(upShift : Bool) {
        if upShift && currentGear < 9 {
            self.currentGear += 1
        } else if !upShift && currentGear > 2 {
            self.currentGear -= 1
        }
    }
}


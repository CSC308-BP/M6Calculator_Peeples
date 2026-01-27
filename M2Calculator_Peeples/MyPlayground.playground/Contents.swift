import UIKit

/*
 Naming Conventions
 UpperCamelCase: Types
 Classes, Structs, Enums, Extensions, Protols
 struct AppDeveloper{}
 
 lowerCamelCase: Values
 Variables, Constants, Functions, Properties, Parameters
 var numberOfStudents = 30
 */

// Variables(var)
// A variable's value CAN be changed after it is set

var course = "iOS"
var crn = 20819
var valid = true
course
print(course)
dump(course)
crn
print(crn)
dump(crn)
valid
print(valid)
dump(valid) // run: shift+enter

// Constants(let)
// A constant's value CANNOT be changed after it is set
let numberOfStudents: Int = 30
print(numberOfStudents)

// Data types: Int, Double, String, Boolean..
//(type(of:))
print(type(of: numberOfStudents))
let num1 = 123
let num2 = 123.45
print(type(of: num1))
print(type(of: num2))
let numbers = Double(num1) + num2
print(numbers)

// Type conversion creates a new value in a different type

let invalidStr = "number" // String
let invalidNum = Int(invalidStr)
print(invalidNum) // optional : nil

let invalidStr2 = "100" // String
let invalidNum2 = Int(invalidStr2)
print(invalidNum) // optional : nil

let score = 95
let scoreText = String(score)
print(scoreText) // "95"

// Type Interface, Type Annotation
let age = 25
let age2: Int = 25
let pi = 3.14
let name = "John"

// Conditions(if statements)
//Odd/Even check
let a = 10
if a % 2 == 0 {
    print("\(a) is Even")
} else {
    print("\(a) is Odd")
}

// Check today's date
let weekday = Calendar.current.component(.weekday, from: Date())
if weekday == 1 {
    print("today is sunday")
}
else if weekday == 2 {
    print("today is monday")
}
else if weekday == 3 {
    print("today is tuesday")
}
else if weekday == 4 {
    print("today is wednesday")
}
else if weekday == 5 {
    print("today is thursday")
    
}
else if weekday == 6 {
    print("today is friday")
}
else {
    print("today is saturday")
}



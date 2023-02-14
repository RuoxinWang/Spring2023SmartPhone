import UIKit

let firstname: String = "Rosen"
let lastname = "Wang"
var age: Int = 25
var arr = [1,2,3]

/*
 Int
 Float
 Double
 Bool
 Character
 String
 Array
 Set
 Dictionary
 */
 
// Operators

// Arithmetic operators

//Ternary Conditional Operators
//var variable = Condition ? value1 : value2

let helloString = "Hello " + firstname + " " + lastname + ", " + "welcome to the class."
let helloString2 = "Hello \(firstname) \(lastname), welcome to the class."
print(helloString)
print(helloString2)

var friends: [String] = []
// Collection Types

friends.append("Tom")
friends.append("Bill")
friends.append("Mark")
friends.append("Peter")
friends.append("Will")

print(friends.count)
print(friends.first!)

print(friends.endIndex)
print(friends.remove(at: 1))

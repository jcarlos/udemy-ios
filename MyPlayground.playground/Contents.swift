//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var array = [3.87, 7.1, 8.9]
array.remove(at: 1)
array.append(3.87 * 8.9)
array
print(array.reverse())




//var menu = [String: Decimal]()
var menu = ["pizza": 10.99, "ice cream": 4.00, "salad": 7.99]
menu.removeValue(forKey: "pizza")
print("The total cost of my meal is \(menu["ice cream"]! + menu["salad"]!)")


var username = "joe"
var password = "1234"

let correctUsername = "joe"
let correctPassword = "1234"


if username == correctUsername && password == correctPassword {
  print("they are correct")
} else if username != correctUsername && password != correctPassword {
  print("They are both wrong")
} else if username != correctUsername {
  print("Username is wrong")
} else if password != correctPassword {
  print("Password is wrong")
}


var i = 1
while i <= 20 {
  print(i * 7)
  i += 1
}

var a1 = [7, 23, 98, 1, 0, 763]
print(a1.())


i = 0
while i < a1.count {
  a1[i] += 1
  i += 1
}

print(a1)


let names = ["John", "Mary", "Paul"]
for name in names {
  print("Hi there \(name)")
}

var a2: [Float] = [8, 7, 19, 28]

for (i, n) in a2.enumerated(){
  a2[i] = n/2
}
print(a2)


let number = 1

print(number % 2 == 0)

var p = false
for i in 2...number {
   print(i)
  if i != number && number % i == 0 {
    print("nt div by \(i)")
    p = false
    break
  }
  p = true
}
print("\(number) is \(p)")







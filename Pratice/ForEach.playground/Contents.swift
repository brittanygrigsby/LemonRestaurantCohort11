/*
 ----- ForEach -----
 Method available on any sequence in Swift (ranges, strings, and arrays).
It lets you runa block of code once for every element in that sequence.
It works similarly to a for-in loop, but uses a closure instead of a loop syntax

 -- Syntax --
 sequence.forEach { element in
    // do something with element
 }
 
 */

print("-- ForEach --")

print("\n-- forEach with a range --")
(1...5).forEach { number in
    print(number)
}

print("\n-- forEach with a half-open range --")
(0..<4).forEach { index in
    print("Index \(index)")
}

print("\n-- forEach ignoring the value --")
(1...3).forEach { _ in
    print("Hello")
}

print("\n-- forEach + array --")
var students = ["Christian", "Brittany", "Stephen", "Leo"] // array of strings

students.forEach { student in
    print(student)
}

print("\n-- forEach + array --")
var dishes = ["Pizza", "Pasta", "Salad"]

dishes.forEach {dish in
    print(dish)
}

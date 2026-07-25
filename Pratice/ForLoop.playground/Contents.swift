/*
 ----FOR-IN LOOP----
 A for-in loop repeats a block of code a specific number of times.
 It is commonly used to go through a sequence as range of number, an arrray, or any collection.
 
 -- Syntax --
 for loopVariable in sequence{
 // code to repeat
}
 
*/

print ("----- FOR LOOP -----")

print ("\n-- Using a range --")
for number in 1...5{
    print(number)
}


print("\n-- From 0 to a number --")
for index in 0..<3{
    print(index)
}

print("\n-- Lopp without using the loop variable --")
for _ in 1...3{
    print("Welcome to the Restaurant!")
}

print("\n-- Loop to build a string --")
var stars = ""

for loopVariable in 1...5{
    stars += "⭐️"
}

print(stars)

//Stride() lets you control when you start, when you end, how big each step is
print("\n-- Stride(), jump by 2--")
for number in stride(from:1, to:11, by:2){
    print(number)
}

print("\n-- Stride(), jump by 2, include the end value")
for number in stride(from:1, through:11, by:2){
    print(number)
}
/*
 Use a for loop to creaste a countdown that goes:
 15, 12, 9, 6, 3
 use stride () to step backwards
 */
print("\n-- Mini-Challenge 3: Countdown by 3")

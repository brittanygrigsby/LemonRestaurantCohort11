/*
 ----- ARRAY -----
 Ordered collection that stores multiple values of the same type in a single variable.
    - Values are stored in a specific order
 -Each valye has an index starting at 0
 
 -- Syntax --
 var/let arrayName = [value1, value2, value3, ...]
 
 */

print ("----- ARRAYS -----")

print ("\n-- Basic Array (String) --")
var dishes = ["Pizza", "Pasta", "Soup"]

print(dishes)
print(dishes[0])//pizza
print(dishes[1])//pasta
print(dishes[2])//soup
print(dishes.count)// 3, counting items in an array

print("\n-- Adding a new dish (append) --")
dishes.append("Salad") // append, Add an item to the end
print(dishes)

print("\n-- Removing an item (remove at index) --")
dishes.remove(at: 1)// Removes "Pasta"
print(dishes)

//String -> "Hello Cohort" (text)
//Int -> 3 (number without period)
//Double -> 4.50 (numbers with periods are double)
//Bool -> true or false

print("\n-- Price Array Double --")
var prices = [9.99, 10.50, 6.00]
print(prices[2])

let total = prices[0] + prices[1]
print("Total for two dishes: \(total)")

/*
 -- MINI CHALLENGE --
 Create an array with your top 3 favorite desserts and print them
 */
print("\n-- Favorite Desserts --")
var desserts = ["Cookie", "Brownie", "Cake"]
print(desserts)
print(desserts.count)

/*
 ----- STRUCT -----
 Custom data type that lets you group related values and behaviors together.
 Struct is like a blueprint.
 
 -- Syntax --
 struct StructName {
    var/let propertyName1: ElementType
    var/let propertyName2: ElementType
 
    func functionName() {
        //function body
    }
 }
 -- Creating and instance of a struct --
 let/ var instanceName = StructName (propertyName1:value1, propertyName2: value2)
 */

struct MenuItem {
    var name: String
    var price: Double
    var image: String
    
    func printInformation(){
        print("Dish: \(name), Price: \(price), Image: \(image)")
    }
}

print("\n-- Creating instances --")

let pizza = MenuItem(name: "Pizza", price: 9.99, image: "pizzaImage.png")
print(pizza)

print("\n-- Accessing properties --")
print(pizza.name)
print(pizza.price)
print(pizza.image)
pizza.printInformation() // calling the function

let pasta = MenuItem(name: "Pasta", price: 8.99, image: "pastaImage.png")
print(pasta.price)
print(pasta.image)
print(pasta.name)
pasta.printInformation() // calling the function

print("\n-- Mini Challenge--")
let spinachdip = MenuItem(name: "Spinach Dip", price: 13.59, image: "spinachDipImage.png")
print(spinachdip.price)
print(spinachdip.image)
print(spinachdip.name)
spinachdip.printInformation()

// New instance
struct Customer {
    var name: String
    var email: String
    var visits: Int
    
    func loyaltyStatus(){
        if visits > 3 {
            print("\(name) is a ⭐️ Loyalty Member")
        } else {
            print("\(name) is a Regular Customer")
        }
    }
}

let angela = Customer(name: "Angela", email: "Angela@email.com", visits:2)
let jim = Customer(name:"Jim", email: "Jim@email.com", visits:7)
let ashley = Customer(name: "Ashley", email: "Ashley@email.com", visits:12)
let joey = Customer(name:"Joey", email: "Joey@email.com", visits:1)

angela.loyaltyStatus()
jim.loyaltyStatus()
ashley.loyaltyStatus()
joey.loyaltyStatus()

struct Book{
    var title: String
    var author: String
    var pages: Int
    
    func printDetails(){
        print("Title: \(title), Author: \(author), Pages: \(pages)")
    }
}

print("\n-- Mini Book Challenge --")

let firstBook = Book(title: "Best Book Ever", author: "Arthur Page", pages: 320)
firstBook.printDetails()

let secondBook = Book(title: "Second Book", author: "Hamilton Washington", pages: 125)
secondBook.printDetails()

print("\n-- Drinks Struct --")
struct Drink{
    var name: String
    var size: String
    var price: Double
    var isCold: Bool
    
    func printDetails(){
        let type = isCold == true ? "Cold Drink" : "Hot Drink" //ternary operator
        print("Drink: \(name), Size: \(size), Price: \(price) - \(type)")
    }
}

let icedTea = Drink(name: "Iced Tea", size: "Large", price: 2.50, isCold: true)
let coffee = Drink(name: "Coffee", size: "Medium", price: 2.50, isCold: false)
let juice = Drink(name: "Juice", size: "Small", price: 2.50, isCold: true)

icedTea.printDetails()
coffee.printDetails()
juice.printDetails()

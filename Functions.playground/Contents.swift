import UIKit

// Functions
/*
    Syntax

    func functionName(parameter1: Type,parameter2: Type) -> returnType {
    //function body
    // logic goes here
    return value
 }
*/

// Example 1
func printWelcome(){
    print("Hello cohort #11")
}

printWelcome()

// Example 2 - 1 parameter
func greet(person: String) -> String{
    let greeting = "Hello " + person + "!"
    return greeting
}

let message = greet(person:"Brittany")
print(message)

// Example 3 - 2 parameters

func add(number1:Int,number2:Int) -> Int{
    return number1 + number2
}
func subs(number1:Int,number2:Int) ->Int{
    return number1 - number2
}

var result = add(number1:-2,number2:-6)
print(result)
result = subs(number1:-2,number2:-6)
print(result)


// Example 4 - unnamed parameters
func mult(_ number1:Int,_ number2:Int) -> Int{
    return number1 - number2
}
result = mult(2,6)
print(result)

//Challenge

func welcomeStudent(_ name: String) -> String{
    return "Welcome, \(name)! Ready to learn Swift?"
}

print(welcomeStudent("Stephen"))


// Mini challenge 2
//func deliveryStatus(minutes: Int) -> String{
 //   if minutes == 0 {
 //       return "your order is ready!"
 //   } else if minutes <= 15 {
  //      return "Almost there"
  //  } else if minutes <= 45 {
    //    return "On its way"
   // } else {
     //   return "running late"
 //   }
//}

//(print(deliveryStatus(minutes: 0))
//(print(deliveryStatus(minutes: 10))
//(print(deliveryStatus(minutes: 30))
//(print(deliveryStatus(minutes: 60))

//Mini-challenge 3
func serviceFee(total: Double) -> Double{
    if total < 20 {
        return 0
    }else if total < 50 {
        return total * 0.10
    }else if total < 100 {
        return total * 0.15
    }else{
        return total * 0.20
        }
    
    }


    func finalBill(total:Double) -> String{
        let fee = serviceFee(total: total)
        let grandTotal = total + fee
        return "Bill:$\(String(format: "%.2f", total)) + fee: $\(String(format: "%.2f", fee)) = $\(String(format: "%.2f", grandTotal))"
    }

print(finalBill(total: 15.0))// Bill: $15.00 + fee: $0.00 = $15.00
print(finalBill(total: 35.0))// Bill: $35.00 + fee: $3.50 = $38.50
print(finalBill(total: 75.0))// Bill: $75.00 + fee: $11.25 = $86.25
print(finalBill(total: 120.0))// Bill: $120.00 + fee: $24.00 = $144.00

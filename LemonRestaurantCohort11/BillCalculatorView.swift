//
//  BillCalculatorView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/13/26.
//

import SwiftUI

struct BillCalculatorView: View {
   // constant
    let resturantName = "Lemon Restaurant"
    let adultPrice = 15.00
    let childPrice = 8.00
    let taxRate = 0.08
    // state vars
    @State private var adults = 2
    @State private var children = 0
    @State private var hasDiscount = false
    
    //functions
    
    //1. base total
    func calculateSubtotal(adults:Int,children:Int) -> Double{
        return Double(adults) * adultPrice + Double(children) * childPrice
    }
    //2. calculate the discount - returns how much is taken off
    func calculateDiscount(subtotal: Double, hasDiscount: Bool) -> Double{
        if !hasDiscount {
            return 0.0
        }
        if subtotal >= 100{
            return subtotal * 0.20
        }else{
            return subtotal * 0.10
        }
    }
    //3. Tax calculation
    func calculateTax(amount: Double) -> Double{
        return amount * taxRate
    }
    //4. grand total calculation
    
    var body: some View {
        Form{
            //Header
            Section{
                HStack{
                    
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.blue)
                        .font(.title)
                    
                    VStack(alignment:.leading){
                        
                        Text("Bill Calculator")
                            .font(.title2)
                            .bold()
                        
                        Text(resturantName)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            
            //Inputs
            Section{
                Stepper("Adults: \(adults)", value: $adults, in: 1...20)
                Stepper("Children: \(children)",value: $children, in: 0...20)
                Toggle("Apply discount", isOn: $hasDiscount)
            }
            // breakdown
            Section(header:Text("Breakdown")){
                
                let subtotal = calculateSubtotal(adults: adults, children: children)
                let discount = calculateDiscount(subtotal: subtotal, hasDiscount: hasDiscount)
                let afterDiscount = subtotal - discount
                let tax = calculateTax(amount:afterDiscount)
                let grandTotal = afterDiscount + tax
                HStack{
                    Text("Subtotal")
                    Spacer()
                    Text("\(subtotal)") //calculate
                }
                
                if hasDiscount {
                    HStack{
                        Text("Discount")
                        Spacer()
                        Text("\(discount)")//calculate
                    }
                }
                HStack{
                    Text("Tax 8%")
                    Spacer()
                    Text("\(tax)")//calculate
                }
                
                Divider()
                HStack{
                    Text("Total")
                    Spacer()
                    Text("\(grandTotal)")
                    
                }
                Divider()
    
                // Per person calculation
                Section(header:Text("Per Person")){
                    let totalPeople = adults + children
                    let perPersonTotal = grandTotal / Double(totalPeople)
                    HStack{
                        Text("People")
                        Spacer()
                        Text("\(totalPeople)")
                    }
                    HStack{
                        Text("Each Pay")
                        Spacer()
                        Text("\(perPersonTotal)")

                    }
                }
            }
        }
    }
}

#Preview {
    BillCalculatorView()
}


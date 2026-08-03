//
//  DishDetailView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/25/26.
//

import SwiftUI


struct DishDetailView: View {
    let dish:Dish
    
    var body: some View {
        ScrollView{
            VStack{
                Image(dish.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                
            
                VStack(alignment:.leading){
                    Text(dish.name)
                        .font(Font.largeTitle.bold())

                    Text(dish.category)
                        .foregroundStyle(Color.gray)
                    Text("\(dish.price, specifier: "%.2f")")
                        .foregroundStyle(Color.green)
                    Text(dish.description)
                        .foregroundStyle(Color.gray)
                }
                
            }
        }
    }
}

#Preview {
    DishDetailView(
        dish: Dish(name: "Pizza", category: "MAIN ENTREE", price: 11.99, description: "Class Margherita pizza with tomato, mozzarella, and fresh basil. Class Margherita pizza with tomato, mozzarella, and fresh basil.", imageName: "pizzaimage")
    )
}

//
//  DishListView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 8/2/26.
//

import SwiftUI

struct DishListView: View {
    @State private var selectedCategory:String = "All"
    
    @State private var dishes:[Dish] = [
        Dish(
            name:"Pancakes",
            category:"Breakfast",
            price:8.99,
            description:"Fluffy buttermilk pancakes topped with whip cream and maple syrup.",
            imageName: "pancakeimage"
        ),
        
        Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 12.99,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "greeksaladimage"
        ),
        
        Dish(
            name: "Pasta",
            category: "Main Courses",
            price: 14.75,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "pastaimage"),
        
        Dish(
            name: "Pizza",
            category: "Main Courses",
            price: 11.50,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "pizzaimage"),
        
        Dish(
            name: "Strawberry Smoothie",
            category: "Drinks",
            price: 7.25,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "strawberrysmoothieimage"),
        
        Dish(
            name: "Pineapple Refresher",
            category: "Drinks",
            price: 6.50,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "pineapplerefresherimage"),
        
        Dish(
            name: "Chocolate Cake Slice",
            category: "Desserts",
            price: 10.25,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "chocolatecakeimage"),
        
        Dish(
            name: "Omelette",
            category: "Breakfast",
            price: 10.00,
            description: "Lorem ipsum dolor sit amet consectetur adipiscing elit feugiat ad, vestibulum nec facilisi ut massa eleifend.",
            imageName: "omeletteimage")
    ]
    
    //compyted property
    var filteredDishes:[Dish] {
        if selectedCategory == "All" {
            return dishes
        } else {
            return dishes.filter { $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Find the Best Food Around You")
                    .font(.system(size:35, weight: .bold))
                
                VStack{
                    Text("Discover Food")
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach(["All", "Breakfast", "Salads", "Main Courses","Desserts","Drinks"], id:\.self) { category in
                                Text(category)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 14)
                                    .background(
                                            selectedCategory == category
                                                ? Color.orange
                                                : Color.orange.opacity(0.6)
                                    )
                                    .animation(.easeInOut(duration: 0.5), value: selectedCategory)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .onTapGesture {
                                        selectedCategory = category
                                    }
                                }
                            }
                        }
                    }
                    .font(.system(size:20, weight: .bold))
                    .padding()
                    
                    ScrollView{
                        LazyVGrid(columns: [GridItem(), GridItem()]){
                            ForEach(filteredDishes, id:\.name) { dish in
                                VStack{
                                    Image(dish.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 100)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    VStack(alignment:.leading){
                                        Text(dish.name)
                                            .font(.system(size: 25, weight: .bold))
                                        Text(dish.description)
                                            .lineLimit(2)
                                        Text("$\(dish.price, specifier: "%.2f")")
                                            .font(.system(size: 20, weight: .bold))
                                        
                                    }
                                }
                                
                                .background(Color.black.opacity(0.07))
                                .padding()
                            }
                        }
                        
                    }
                    
                }
            }
        }
    }


#Preview {
    DishListView()
}

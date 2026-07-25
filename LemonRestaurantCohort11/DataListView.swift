//
//  DataListView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/18/26.
//

import SwiftUI

struct DataListView: View {
    var students = ["Christian", "Brittany", "Stephen", "Leo"]
    var favFoods = ["Lasgna", "Artichoke and Spinach Dip", "Asada Fries", "Fried chicken", "Tacos"]
    //new array
    
    var body: some View {
        List{
            Section(header: Text("Students")){
                ForEach(students, id:\.self) { student in
                    Text(student)
                }
            }
            Section(header: Text("Favorite Foods")){
                //assignment here (For Each)
                ForEach(favFoods, id:\.self) { food in
                    Text(food)
                        .foregroundColor(Color.green)
                }
            }
        }
    }
}

#Preview {
    DataListView()
}

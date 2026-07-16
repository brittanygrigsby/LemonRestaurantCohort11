//
//  ContentView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/13/26.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "iphone") // view 1
                .font(.system(size: 40))
                .foregroundStyle(.green)
            
            Text("Welcome to iOS!") // view 2
                .font(.title)
                .padding()
            
            Text("Cohort 11") // view 3
                .bold()
                .foregroundColor(.blue)
       
        }
        .padding()
    }
}
 
#Preview {
    ContentView()
}

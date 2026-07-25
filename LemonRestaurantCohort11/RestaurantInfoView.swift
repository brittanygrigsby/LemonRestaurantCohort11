//
//  RestaurantInfoView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/24/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia =  [
        "Instagram": "@lemonrestaurant",
        "Facebook": "facebook.com/lemonrestaurant",
        "Tiktok": "@restaurant.lemon"
    ]
    let services =  [
        "Self Parking": "Free",
        "Valet Parking": "$25 flat rate",
        "WiFi": "Yes",
        "Catering": "Available",
        "Reservations": "Available",
        "Delivery": "No"
    ]
    
    
    var body: some View {
        NavigationStack{
            List {
                Section(header:Text("Social Media")){
                    ForEach(Array(socialMedia), id:\.key){(key,value) in
                        HStack{
                            Text(key)
                                .bold()
                            Spacer()
                            Text(value)
                                .foregroundStyle(.gray)
                            
                        }
                    }
                }
                Section(header:Text("Services")){
                    ForEach(Array(services), id:\.key){(key,value) in
                        HStack{
                            Text(key)
                                .bold()
                            Spacer()
                            Text(value)
                                .foregroundStyle(.gray)
                            
                        }
                    }
                }
                .navigationTitle("Restaurant Information")
            }
        }
    }
}
#Preview {
    RestaurantInfoView()
}

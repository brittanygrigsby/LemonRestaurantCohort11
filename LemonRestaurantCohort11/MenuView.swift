//
//  MenuView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/24/26.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                Text("Lemon Restaurant")
                    .font(.system(size: 50, weight: .heavy))
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                
                Text("Your Favorite Food")
                    .font(.system(size: 20, weight: .semibold))
                
                Spacer()
                
                Image(systemName: "fork.knife.circle.fill")
                    .font(.system(size: 150))
                    .foregroundColor(Color.orange)
                
                Spacer()
              ///
                VStack {
                    NavigationLink {
                        DrinkSizeSwitcher()
                    } label: {
                        HStack {
                            Image (systemName: "cup.and.saucer.fill")
                            Text("Drink size")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.80))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    NavigationLink {
                        DataListView()
                    } label: {
                        HStack {
                            Image(systemName: "list.bullet")
                            Text("Data List")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.80))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    NavigationLink{
                        RestaurantInfoView()
                    } label : {
                        HStack{
                            Image(systemName: "info")
                            Text("Restaurant Information")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.80))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    NavigationLink{
                        ReservationForm()
                    } label : {
                        HStack{
                            Image(systemName: "book")
                            Text("Restaurant Reservation")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.80))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    NavigationLink{
                        BillCalculatorView()
                    } label : {
                        HStack{
                            Image(systemName: "percent")
                            Text("Bill Calculator")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.80))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                .padding(.horizontal)
                Spacer()
                
            }
            //.navigationTitle("Home")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow.opacity(0.15))
        }

    }
}

#Preview {
    MenuView()
}

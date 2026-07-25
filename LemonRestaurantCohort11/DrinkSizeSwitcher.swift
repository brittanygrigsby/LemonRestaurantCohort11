//
//  DrinkSizeSwitcher.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/18/26.
//

import SwiftUI

struct DrinkSizeSwitcher: View {
    @State private var counter = 0
    @State private var size = 1
    //1 = small
    //2 = medium
    //3 = large
    
    var body: some View {
        VStack {
            ZStack{
                switch size {
                case 1:
                    Text("🥤")
                        .font(.system(size: 100))
                case 2:
                    Text("🥤")
                        .font(.system(size: 140))
                case 3:
                    Text("🥤")
                        .font(.system(size: 170))
                default:
                    Text("Wrong Option")
                }
            }
            .frame(height: 190)
            .animation(.easeInOut(duration:0.3), value: size)
            
            switch size {
            case 1:
                Text("Small Drink")
            case 2:
                Text("Medium Drink")
            case 3:
                Text("Large Drink")
            default:
                Text("Wrong Option")
            }
        }

        HStack {
            Button("Small"){
                size = 1
            }
            .buttonStyle(.borderedProminent)
            
            Button("Medium"){
                size = 2
            }
            .buttonStyle(.borderedProminent)
            Button("Increase"){
                size = 3
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    DrinkSizeSwitcher()
}

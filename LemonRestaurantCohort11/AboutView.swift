//
//  AboutView.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/13/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Little Lemon")
                .foregroundStyle(.green)
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text("Little Lemon is a cozy Mediterranean restaurant serving fresh and healthy dishes. Our goal is to bring people together through great food and warm hospitality.")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            HStack{
                Image(systemName: "fork.knife")
                Image(systemName: "leaf")
                Image(systemName: "map")
            }
            .font(.system(size: 32))
            .foregroundStyle(.yellow)
        }
    }
}
 
#Preview {
    AboutView()
}

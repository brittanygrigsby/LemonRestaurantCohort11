//
//  ReservationForm.swift
//  LemonRestaurantCohort11
//
//  Created by Brittany Grigsby on 7/15/26.
//

import SwiftUI

struct ReservationForm: View {
    //constants
    let restaurantName = "Little Lemon Bistro"
    let maxGuests = 12
    //State variables ->
    //if this value changes update the UI
    
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var children = 0
    @State private var notes = ""
    @State private var showMessage = true
    
    var nameFieldColor: Color {
        if userName.isEmpty{
            return .red
        }else if userName.count < 3 {
            return .orange
        }else{
            return .primary
        }
    }
    
    var reservationStatus: String {
        if userName.isEmpty && phoneNumber.isEmpty {
            return "Fill in name and phone number to continue."
        } else if userName.isEmpty {
            return "Missing: name."
        } else if phoneNumber.count < 10 {
            return "Missing: valid phone number."
        } else {
            return "Ready to preview!"
        }
    }
    
    var body: some View {
        Form{
            //header
            Section{
                HStack{
                    
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.green)
                        .font(.title)
                    
                    VStack(alignment:.leading){
                        
                        Text(restaurantName)
                            .font(.title2)
                            .bold()
                        
                        Text("Reservation Form")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            //reservation details
            Section(header:Text("Reservation Details")){
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                    .padding(6)
                    .background(nameFieldColor.opacity(0.05))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius:8)
                            .stroke(nameFieldColor,lineWidth:0.5)
                    )
                    
                // $ ->this view can read and write the value
                
                if userName.isEmpty {
                    Text("Please enter a name.")
                        .font(.footnote)
                        .foregroundStyle(.red)
                }
                
                Stepper("Guests: \(guestCount)",value:$guestCount,in:1...maxGuests)
                

                if guestCount >= 8 {
                    Text("For Large groups, we’ll do our best to accommodate you.")
                        .font(.footnote)
                        .foregroundStyle(.orange)
                }
                
            }
            //contact
            Section(header:Text("Contact information")){
                TextField("Phone",text:$phoneNumber)
                    .keyboardType(.numberPad)
                
                // the phone number is required
                if phoneNumber.isEmpty {
                    Text("Phone number is required")
                        .font(.footnote)
                        .foregroundStyle(.red)
                }else if phoneNumber.count < 10 {
                    Text("Phone Number too short, please include area code")
                        .font(.footnote)
                        .foregroundStyle(.orange)
                }else{
                    Text("Looks good")
                        .font(.footnote)
                        .foregroundStyle(.green)
                }
            }
            Section(header:Text("Optional")){
                            TextField("Occasion (Birthday, Anniversary, etc.)",text: $notes)

                            Stepper("Children: \(children)", value: $children, in: 0...10)
                            
                            if children > 0 {
                                Text("Kids Menu available")
                                    .font(.footnote)
                                    .foregroundStyle(.blue)
                            }
                Toggle ("Show special text", isOn: $showMessage)
                if showMessage{
                    Text("Discount %")
                        .foregroundStyle(.green)
                }

                        }
            
            //actions
            Section(header: Text("Actions")){
                Text(reservationStatus)
                    .font(.footnote)
                    .foregroundStyle(.orange)
                Button("Preview Reservation Details"){
                    previewText =
                    """
                    Name: \(userName)
                    Guest: \(guestCount)
                    Phone: \(phoneNumber)
                    """
                }.disabled(userName.isEmpty || phoneNumber.isEmpty)
            }
            
            //preview
            Section(header: Text("Preview")){
                Text(previewText)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(4)
                    .textSelection(.enabled)
            }
        }
        .navigationTitle("Reservation")
    }
}

#Preview {
    NavigationStack{
        ReservationForm()
    }
}

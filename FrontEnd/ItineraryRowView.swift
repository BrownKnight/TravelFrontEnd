//
//  ItineraryRowView.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI

struct ItineraryRowView: View {
    var itinerary: Itinerary
    
    var body: some View {
        HStack {
            Text(itinerary.name)
            Spacer()
            Text("Pins: \(itinerary.pins.count)")
        }
        .padding()
    }
}

#Preview {
    ItineraryRowView(itinerary: ModelData().itineraries.data[0])
}

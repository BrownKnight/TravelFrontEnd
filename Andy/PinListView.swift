//
//  PinList.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI
import MapKit

struct PinListView: View {
    var pins: [Pin]
    
    @Binding var selectedPin: Int?
    
    var body: some View {
        List(pins, selection: $selectedPin) { pin in
            PinRowView(pin: pin)
        }
    }
}

#Preview {
    PinListView(
        pins: ModelData().itineraries.data[0].pins,
        selectedPin: .constant(1)
    )
}

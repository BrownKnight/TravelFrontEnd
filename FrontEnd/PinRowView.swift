//
//  PinRowView.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI

struct PinRowView: View {
    var pin: Pin
    
    var body: some View {
        HStack {
            Text("\(pin.name)")
                .font(.headline)
            
            Spacer()
            
            Text("\(pin.lat), \(pin.long)")
                .font(.caption2)
        }
    }
}

#Preview {
    Group {
        PinRowView(pin: ModelData().itineraries.data[0].pins[0])
        
        PinRowView(pin: ModelData().itineraries.data[0].pins[1])
    }
}

//
//  ItineraryView.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI
import MapKit

struct ItineraryView: View {
    var itinerary: Itinerary
    
    @State private var selectedPin: Int? {
        didSet {
            if selectedPin != nil {
                let foundPin = itinerary.pins.first(where: {$0.id == selectedPin})
                if (foundPin != nil) {
                    mapPosition = .item(MKMapItem(placemark: .init(coordinate: foundPin!.coordinate)))
                }
            }
        }
    }
    @State private var mapPosition: MapCameraPosition = .automatic
    
    var body: some View {
        VStack {
            MapReader { reader in
                Map(
                    position: $mapPosition,
                    selection: $selectedPin) {
                    ForEach(itinerary.pins) { pin in
                        Marker(pin.name, coordinate: pin.coordinate)
                            .tag(pin.id)
                    }
                    UserAnnotation()
                }
                .mapControls {
                    MapUserLocationButton()
                }
                .frame(height: 500)
            }
            
            PinListView(pins: itinerary.pins, selectedPin: $selectedPin)
        }
        .navigationTitle(itinerary.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ItineraryView(itinerary: ModelData().itineraries.data[0])
}

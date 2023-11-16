//
//  ItineraryListView.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI

struct ItineraryListView: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List(modelData.itineraries.data) { itinerary in
                NavigationLink {
                    ItineraryView(itinerary: itinerary)
                } label: {
                    ItineraryRowView(itinerary: itinerary)
                }
            }
            .navigationTitle("Itineraries")
        } detail: {
            Text("Select a Itinerary to view")
        }
    }
}

#Preview {
    ItineraryListView()
        .environment(ModelData())
}

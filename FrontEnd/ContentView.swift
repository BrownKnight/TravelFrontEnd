//
//  ContentView.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ItineraryListView()
                .environment(ModelData())
        }
    }
}

#Preview {
    ContentView()
}

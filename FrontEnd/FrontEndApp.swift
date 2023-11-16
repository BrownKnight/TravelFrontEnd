//
//  FrontEndApp.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import SwiftUI

@main
struct FrontEndApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

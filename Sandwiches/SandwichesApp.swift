//
//  SandwichesApp.swift
//  Sandwiches
//
//  Created by Boyi Ma on 2021-01-05.
//

import SwiftUI

@main
struct SandwichesApp: App {
    // StateObject is used to instantiate an observable object and change the view when it changes
    // put it here instead of in the view as this applies app-wide
    @StateObject private var store = SandwichStore(sandwiches: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: testStore)
        }
    }
}

//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Boyi Ma on 2021-01-06.
//

import Foundation

class SandwichStore: ObservableObject { // tell swiftUI when object changes
    @Published var sandwiches: [Sandwich] // the property to observe 
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
    
}

let testStore = SandwichStore(sandwiches: testData)

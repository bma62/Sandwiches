//
//  Sandwich.swift
//  Sandwiches
//
//  Created by Boyi Ma on 2021-01-05.
//

import Foundation

// make identifiable to use in a list
struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + " Thumb" }
    
}

let testData = [
    Sandwich(name: "Club", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Hot dog", ingredientCount: 2, isSpicy: true)
]

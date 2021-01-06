//
//  ContentView.swift
//  Sandwiches
//
//  Created by Boyi Ma on 2021-01-05.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    
    var body: some View {
        NavigationView {
            List {
                // populate cells using the datasource
                ForEach(sandwiches) { sandwich in
                    // destination is a view that gets pushed onto the navi stack
                    // contents of the link are our cells
                    SandwichCell(sandwich: sandwich)
                }
                
                HStack {
                    // add spacers to center the text
                    Spacer()
                    Text("\(sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .resizable()
                .frame(width: 90.0, height: 90.0)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

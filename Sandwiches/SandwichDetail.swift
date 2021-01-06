//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Boyi Ma on 2021-01-05.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            // set space minLenth to 0 so image can go from edge to edgo
            Spacer(minLength: 0)
            
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    // animate the transition between different states
                    withAnimation {
                        // on tap, toggle the boolean state to re-render the body
                        zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            // only show the banner if is spicy and don't let it take spacae if zoomed in
            if sandwich.isSpicy && !zoomed {
                // embed in an HStack to center the label
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps()) // capitialize all letters
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom)) // custom to transition the banner to move in and out of the bottom edge
            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        // embed the preview in a navigation view to see it title properly
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[0])
            }
            NavigationView {
                SandwichDetail(sandwich: testData[1])
            }
        }
    }
}

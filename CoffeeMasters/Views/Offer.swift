//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Camdyn Rasque on 2/23/25.
//

import SwiftUI

struct Offer: View {
    var title: String = ""
    var description: String = ""

    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
    }
}

#Preview("First") {
    Offer(title: "My Offer", description: "This is a description")
}

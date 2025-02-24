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
        VStack {
            Text(title)
            Text(description)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 50)) {
    Offer(title: "Title", description: "Description")
}

#Preview(traits: .fixedLayout(width: 200, height: 50)) {
    Offer(title: "Title", description: "Description")
}

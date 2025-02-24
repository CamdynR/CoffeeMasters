//
//  Category.swift
//  CoffeeMasters
//
//  Created by Camdyn Rasque on 2/23/25.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}

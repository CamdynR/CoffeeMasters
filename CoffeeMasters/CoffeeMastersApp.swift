//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Camdyn Rasque on 2/23/25.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {

    var menuManager = MenuManager()
    var cartManager = CartManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}

//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Camdyn Rasque on 2/23/25.
//

import SwiftUI

struct ContentView: View {
    @State var name = "Unnamed"
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Home")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Home")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info")
                    Text("Home")
                }
        }
    }
}

#Preview {
    ContentView()
}

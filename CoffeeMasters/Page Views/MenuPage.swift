//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Camdyn Rasque on 2/23/25.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager

    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
    
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsPage(product: product)
                        } label: {
                            ProductItem(product: product)
                        }
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}

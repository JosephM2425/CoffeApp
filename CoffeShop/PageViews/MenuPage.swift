//
//  MenuPage.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List{
                ForEach(menuManager.menu) { category in
                    
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsView(product: product)
                        } label: {
                            ProductItem(product: product)
                        }
                    }
                    
                                     
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}

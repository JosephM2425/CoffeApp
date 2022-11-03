//
//  CoffeShopApp.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 27/10/22.
//

import SwiftUI

@main
struct CoffeShopApp: App {
    
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

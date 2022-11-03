//
//  CartManager.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    
    func add(product: Product, quantity: Int) {
        self.cart.append( (product, quantity) )
    }
    
    func remove(product: Product) {
        self.cart.removeAll { itemInCart in
            return itemInCart.0.id==product.id
        }
    }
}

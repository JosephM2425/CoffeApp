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
    
    func total() -> Double {
        var total = 0.0
        
        for product in cart {
            total += product.0.price * Double(product.1)
        }
        return total
    }
    
}

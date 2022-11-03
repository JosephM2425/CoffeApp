//
//  Product.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import Foundation


struct Product: Identifiable, Decodable{
    var id: Int
    var name: String
    var description: String?
    var price: Double 
    var image: String
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
    
    var priceFormat: String {
        String(format: "%.2f", price)
    }
}

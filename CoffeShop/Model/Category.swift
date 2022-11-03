//
//  Category.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import Foundation

struct Category: Identifiable, Decodable {
    var name: String
    var products: [Product] = []
    var id: String {
        return self.name
    }
}

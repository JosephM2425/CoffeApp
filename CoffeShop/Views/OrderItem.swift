//
//  OrderItem.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 1/11/22.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text("\(item.0.name)")
            Spacer()
            Text("$ \(Double(item.1)*item.0.price, specifier: "%.2f")")
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "String", price: 2.2, image: ""), 2))
    }
}

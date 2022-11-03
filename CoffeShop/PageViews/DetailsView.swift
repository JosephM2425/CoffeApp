//
//  DetailsView.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import SwiftUI

struct DetailsView: View {
    
    @State var quantity = 1
    var product: Product
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            if ((product.description) != nil) {
                Text(product.description ?? "")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundColor(Color("Primary"))
            }
            HStack {
                Text("$ \(product.priceFormat)")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal \(Double(quantity)*product.price, specifier: "%.2f") ")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity: quantity)
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative#2"))
                .foregroundColor(Color.white)
                .cornerRadius(25)
                .fontWeight(.heavy)

        }
            //.navigationTitle(product.name)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(product: Product(id: 1, name: "Cafecito", description: "Test", price: 25.0, image: "")).environmentObject(CartManager())
    }
}

//
//  ContentView.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 27/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            CartPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("My Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

//struct Greeting: View {
//    @State var name = ""
//
//    var body: some View {
//        VStack {
//            TextField("Enter your name", text: $name)
//            Text("Hello \(name)")
//        }
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

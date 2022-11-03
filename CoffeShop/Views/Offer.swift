//
//  Offer.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import SwiftUI

struct Offer: View {
    
    var title = ""
    var description = ""
    
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description).padding()
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
        
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "My Offer", description: "description")
    }
}

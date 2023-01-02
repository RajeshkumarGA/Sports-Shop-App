//
//  AddToCartDetailView.swift
//  Sports Shop
//
//  Created by Admin on 02/01/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
       Button(action: {}, label: {
           Spacer()
           Text("Add to Cart".uppercased())
               .font(.system(.title2, design: .rounded))
               .fontWeight(.bold)
               .foregroundColor(.white)
           Spacer()
       })
       .padding(15)
       .background(Color(red: shop.selectedProduuct?.red ?? sampleProduct.red, green: shop.selectedProduuct?.green ?? sampleProduct.green, blue: shop.selectedProduuct?.blue ?? sampleProduct.blue))
       .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
    }
}

//
//  HeaderDetailView.swift
//  Sports Shop
//
//  Created by Admin on 02/01/23.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduuct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
    }
}

//
//  TopPartDetailView.swift
//  Sports Shop
//
//  Created by Admin on 02/01/23.
//

import SwiftUI

struct TopPartDetailView: View {
    @State var isAimatiing : Bool = false
    @EnvironmentObject var shop : Shop
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            //Price
            VStack(alignment: .leading,spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduuct?.formatedPrice ?? sampleProduct.formatedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35 , anchor: .leading)
            })
            .offset(y: isAimatiing ? -50 : -75)
                Spacer()
            
            // Image
            Image(shop.selectedProduuct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAimatiing ? 0 : -35)
            
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAimatiing.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

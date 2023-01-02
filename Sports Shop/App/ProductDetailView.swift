//
//  ProductDetailView.swift
//  Sports Shop
//
//  Created by Admin on 29/12/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            //NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
              
            
            //RATING + SIZES
            //DISCRIPTION
            VStack(alignment: .center,spacing: 0, content: {
                
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom)
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduuct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        
                }
                //QUANTITY + FAVERRATES
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
            })
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomeShape())
                .padding(.top, -105))
        
        }//Vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectedProduuct?.red ?? sampleProduct.red, green: shop.selectedProduuct?.green ?? sampleProduct.green, blue: shop.selectedProduuct?.blue ?? sampleProduct.blue).ignoresSafeArea(.all,edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}

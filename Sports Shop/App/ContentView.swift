//
//  ContentView.swift
//  Sports Shop
//
//  Created by Admin on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTYS
    @EnvironmentObject var shop : Shop
    
    // MARK: BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduuct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication
                            .shared
                            .connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5 , x: 0, y: 5)
                    ScrollView(.vertical , showsIndicators: false, content: {
                        VStack(spacing: 0){
                            
                            //Top Tab View
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 10)
                            
                            // Grid View
                            CategoryGridView()
                            
                            // Title View
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { item in
                                    ProductItemView(product: item)
                                        .onTapGesture(perform: {
                                            withAnimation(.easeOut(duration: 0.5)){
                                                shop.selectedProduuct = item
                                                shop.showingProduct = true
                                            }
                                        })
                                }
                            })
                            .padding(15)
                            
                            //Brannds View
                            TitleView(title: "Brands")
                            BrandsGridView()
                            
                            // Footer View
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                }// VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }// Zstack
        .ignoresSafeArea(.all,edges: .top)
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}

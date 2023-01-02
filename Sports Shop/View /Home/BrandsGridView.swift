//
//  BrandsGridView.swift
//  Sports Shop
//
//  Created by Admin on 29/12/22.
//

import SwiftUI

struct BrandsGridView: View {
    
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false){
            LazyHGrid(rows: gridLayout,spacing: columnSpacing, content: {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandsGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsGridView()
            .previewLayout(.sizeThatFits)
    }
}

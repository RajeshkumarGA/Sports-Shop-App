//
//  CategoryGridView.swift
//  Sports Shop
//
//  Created by Admin on 28/12/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [], content: {
                Section(header: SectionView(rotateClockWise: false), footer: SectionView(rotateClockWise: true)){
                    ForEach(categorys) { item in
                        CategoryItemView(category: item)
                    }
                }
            })// Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
           
        })// Scrool
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
    }
}

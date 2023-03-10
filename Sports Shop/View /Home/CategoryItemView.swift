//
//  CategoryItemView.swift
//  Sports Shop
//
//  Created by Admin on 28/12/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category : Category
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Image(category.image)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30, alignment: .center)
                .foregroundColor(.gray)
            
            Text(category.name.uppercased())
                .fontWeight(.light)
                .foregroundColor(.gray)
            Spacer()
        })
        .padding()
        .background(Color.white.cornerRadius(12))
        .background(RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1))
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categorys[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

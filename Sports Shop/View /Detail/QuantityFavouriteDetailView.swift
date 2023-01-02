//
//  QuantityFavouriteDetailView.swift
//  Sports Shop
//
//  Created by Admin on 02/01/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var count : Int = 0
    @State private var isFaveretClick : Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if count > 0{
                    count-=1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(count)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {
                if count <= 10{
                    count+=1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                isFaveretClick.toggle()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(isFaveretClick ? .pink : .gray)
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

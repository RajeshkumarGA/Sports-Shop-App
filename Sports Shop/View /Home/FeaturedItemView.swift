//
//  FeaturedItemView.swift
//  Sports Shop
//
//  Created by Admin on 28/12/22.
//

import SwiftUI

struct FeaturedItemView: View {
    var playerImage : Player
    var body: some View {
        Image(playerImage.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(playerImage: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

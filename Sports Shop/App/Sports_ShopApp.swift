//
//  Sports_ShopApp.swift
//  Sports Shop
//
//  Created by Admin on 27/12/22.
//

import SwiftUI

@main
struct Sports_ShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

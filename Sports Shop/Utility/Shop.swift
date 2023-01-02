//
//  Shop.swift
//  Sports Shop
//
//  Created by Admin on 02/01/23.
//

import Foundation

class Shop : ObservableObject{
    @Published var showingProduct : Bool = false
    @Published var selectedProduuct : Product? = nil
}

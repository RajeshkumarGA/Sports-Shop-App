//
//  CategoryModel.swift
//  Sports Shop
//
//  Created by Admin on 28/12/22.
//

import Foundation

struct Category : Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}

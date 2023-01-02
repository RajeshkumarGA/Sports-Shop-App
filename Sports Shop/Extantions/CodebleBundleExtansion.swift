//
//  CodebleBundleExtansion.swift
//  Sports Shop
//
//  Created by Admin on 28/12/22.
//

import Foundation

extension Bundle{
    func decode<T : Codable>(_ file: String) -> T{
        // 1. Locate The Json File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate the \(file) in Bundle ")
        }
        // 2. Create the property for Data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data from \(file) in Bundle")
        }
        // 3. Create the decoder
        let decoder = JSONDecoder()
        
        // 4. Create the property for the decoder
        guard let decodedData = try? decoder.decode (T.self, from: data) else {
            fatalError("failed to decode the \(file) in bundole")
        }
        // 5. Return the ready to use data
        return decodedData
    }
}

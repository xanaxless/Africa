//
//  CodableBundleExtention.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 22.04.2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle ")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(url) in bundle ")
        }
        
        let decode = JSONDecoder()
        guard let loaded = try? decode.decode(T.self, from: data)else{
            fatalError("Failed to decode \(data) from bundle ")
        }
        return loaded
    }
}

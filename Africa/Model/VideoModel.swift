//
//  VideoModel.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 23.04.2022.
//

import Foundation

struct Video: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    //Computed Propety: Cover Image Name 
    var covername: String {
        return "video-\(id)"
    }
}

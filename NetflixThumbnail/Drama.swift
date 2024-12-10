//
//  Drama.swift
//  NetflixThumbnail
//
//  Created by 허재영 on 2024.12.10.
//

import Foundation

struct DramaCollection: Codable {
    var bigBanner: String
    var dramas: [Drama]

    enum CodingKeys: String, CodingKey {
        case bigBanner = "BIG_BANNER"
        case dramas = "DRAMAS"
    }
}

struct Drama: Codable {
    var categoryTitle: String
    var posters: [String]
    
    enum CodingKeys: String, CodingKey {
        case categoryTitle = "CATEGORY_TITLE"
        case posters = "POSTERS"
    }
}

//
//  PopularMovieEntity.swift
//  Viper
//
//  Created by Enrique on 11/08/23.
//

import Foundation

struct PopularMovieEntity: Decodable {
    var id: Int
    var title: String
    var overview: String
    var imageURL: String
    var votes: Double
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case imageURL = "poster_path"
        case votes = "vote_average"
        
    }
        
}

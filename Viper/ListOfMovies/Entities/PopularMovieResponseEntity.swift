//
//  PopularMovieResponseEntity.swift
//  Viper
//
//  Created by Enrique on 11/08/23.
//

import Foundation

struct PopularMovieResponseEntity: Decodable {
    let results: [PopularMovieEntity]
}

//
//  Mapper.swift
//  Viper
//
//  Created by Enrique on 13/08/23.
//

import Foundation

struct Mapper {
    func map(entity: PopularMovieEntity) -> ViewModel {
        ViewModel(title: entity.title,
                  overview: entity.overview,
                  imageURL: URL(string: "https://image.tmdb.org/t/p/w500/" + entity.imageURL))
    }
}

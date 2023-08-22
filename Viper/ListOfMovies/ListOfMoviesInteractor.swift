//
//  ListOfMoviesInteractor.swift
//  Viper
//
//  Created by Enrique on 11/08/23.
//

import Foundation

protocol ListOfMoviesInteractable: AnyObject {
    func getListOfMovies() async ->PopularMovieResponseEntity
}

class ListOfMoviesInteractor: ListOfMoviesInteractable {
    func getListOfMovies() async -> PopularMovieResponseEntity {
        let url = URL (string: "https://api.themoviedb.org/3/movie/popular?api_key=bdc0f8d18374d2978f78fc15a9f83c94")!
        let (data, _) = try! await URLSession.shared.data(from: url)
                       return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
}

class ListOfMoviesInteractorMock: ListOfMoviesInteractable {
    func getListOfMovies() async -> PopularMovieResponseEntity {
        return PopularMovieResponseEntity(results: [
            .init(id: 0, title: "SwiftBeta Aea", overview: "Aprender Swift", imageURL: "", votes: 10),
            .init(id: 1, title: "SwiftBeta Aea", overview: "Aprender a", imageURL: "", votes: 10),
            .init(id: 2, title: "SwiftBeta Aea", overview: "Aprender e", imageURL: "", votes: 10),
            .init(id: 3, title: "SwiftBeta Aea", overview: "Aprender a", imageURL: "", votes: 10),
            .init(id: 4, title: "SwiftBeta Aea", overview: "Aprender z", imageURL: "", votes: 10),
            .init(id: 5, title: "SwiftBeta Aea", overview: "Aprender s", imageURL: "", votes: 10),
        ])
    }
}










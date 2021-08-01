//
//  Film.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfFilm: Decodable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Film?
}

struct Film: Decodable {
    let title: String?
    let openingCrawl: String?
    let director: String?
    let producer: String?
    let releaseDate: String?
    let characters: [String?]
    let planets: [String?]
    let starships: [String?]
    let vehicles: [String?]
    let species: [String?]
}

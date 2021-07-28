//
//  Film.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfFilm {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Film?
}

struct Film {
    let title: String?
    let opening_crawl: String?
    let director: String?
    let producer: String?
    let release_date: String?
    let characters: [People]?
    let planets: [Planets]?
    let starships: [Starships]?
    let vehicles: [Vehicles]?
    let species: [Species]?
}

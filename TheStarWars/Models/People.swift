//
//  People.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfPeople {
    let count: Int?
    let next: String?
    let previous: String?
    let result: [People]?
}

struct People {
    let name: String?
    let height: String?
    let mass: String?
    let hair_color: String?
    let skin_color: String?
    let eye_color: String?
    let gender: String?
    let homeworld: String?
    let films: [Film]?
    let species: [Species]?
    let vehicles: [Vehicles]?
    let starships: [Starships]?
}

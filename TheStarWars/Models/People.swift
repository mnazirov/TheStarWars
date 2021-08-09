//
//  People.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfPeople: Decodable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [People]?
}

struct People: Decodable {
    let name: String?
    let height: String?
    let mass: String?
    let hairColor: String?
    let skinColor: String?
    let eyeColor: String?
    let gender: String?
    let homeworld: String?
    let films: [String]?
    let species: [String]?
    let vehicles: [String]?
    let starships: [String]?
}

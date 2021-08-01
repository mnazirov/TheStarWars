//
//  Starships.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfStarships: Decodable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Starships?
}

struct Starships: Decodable {
    let name: String?
    let model: String?
    let manufacturer: String?
    let cosInCredits: String?
    let length: String?
    let maxAtmospheringSpeed: String?
    let crew: String?
    let passengers: String?
    let cargoCapacity: String?
    let consumables: String?
    let hyperdriveRating: String?
    let MGLT: String?
    let starshipClass: String?
    let pilots: [String?]
    let films: [String?]
}

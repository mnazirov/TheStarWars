//
//  Starships.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfStarships {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Starships?
}

struct Starships {
    let name: String?
    let model: String?
    let manufacturer: String?
    let cost_in_credits: String?
    let length: String?
    let max_atmosphering_speed: String?
    let crew: String?
    let passengers: String?
    let cargo_capacity: String?
    let consumables: String?
    let hyperdrive_rating: String?
    let MGLT: String?
    let starship_class: String?
    let pilots: [People]?
    let films: [Film]?
}

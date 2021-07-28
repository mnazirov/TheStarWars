//
//  Planets.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfPlanets {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Planets?
}

struct Planets {
    let name: String?
    let rotation_period: String?
    let orbital_period: String?
    let diameter: String?
    let climate: String?
    let gravity: String?
    let terrain: String?
    let surface_water: String?
    let population: String?
    let residents: [People]?
    let films: [Film]?
}

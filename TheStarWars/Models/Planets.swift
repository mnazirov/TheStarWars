//
//  Planets.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfPlanets: Decodable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Planets?
}

struct Planets: Decodable {
    let name: String?
    let rotationPeriod: String?
    let orbitalPeriod: String?
    let diameter: String?
    let climate: String?
    let gravity: String?
    let terrain: String?
    let surfaceWater: String?
    let population: String?
    let residents: [String?]
    let films: [String?]
}

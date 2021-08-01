//
//  Vehicles.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfVehicles: Decodable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Vehicles?
}

struct Vehicles: Decodable {
    let name: String?
    let model: String?
    let manufacturer: String?
    let costInCredits: String?
    let length: String?
    let maxAtmospheringSpeed: String?
    let crew: String?
    let passengers: String?
    let cargoCapacity: String?
    let consumables: String?
    let vehicleClass: String?
    let pilots: [String?]
    let films: [String?]
}

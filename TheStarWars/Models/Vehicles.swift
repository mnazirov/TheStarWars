//
//  Vehicles.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

struct CatalogOfVehicles {
    let count: Int?
    let next: String?
    let previous: String?
    let results: Vehicles?
}

struct Vehicles {
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
    let vehicle_class: String?
    let pilots: [People]?
    let films: [Film]?
}

//
//  NetworkManager.swift
//  TheStarWars
//
//  Created by Marat on 28.07.2021.
//

import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchPeople(urlJSON: String, complition: @escaping (CatalogOfPeople) -> Void) {
        guard let url = URL(string: urlJSON) else { return print("Ошибка URL") }
        

        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let _ = error {
                return
            }
            
            guard let data = data else { return }
            
            do {
                let decodable = JSONDecoder()
                decodable.keyDecodingStrategy = .convertFromSnakeCase
                let people = try decodable.decode(CatalogOfPeople.self, from: data)
                complition(people)
            } catch let errorData {
                print(errorData)
            }
        }.resume()
    }
}


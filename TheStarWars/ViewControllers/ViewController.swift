//
//  ViewController.swift
//  TheStarWars
//
//  Created by Marat on 17.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        NetworkManager.shared.fetchPeople(urlJSON: "https://swapi.dev/api/people/1/?format=json") { people in
            print(people)
            DispatchQueue.main.async {
                self.showAlert(title: "Поздравляю!", message: "Данные получены")
            }
        }
    }
}

extension ViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

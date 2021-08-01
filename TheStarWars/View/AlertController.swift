//
//  AlertConttroller.swift
//  TheStarWars
//
//  Created by Marat on 01.08.2021.
//
import UIKit

class AlertController: UIAlertController {
    static let shared = AlertController()
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}


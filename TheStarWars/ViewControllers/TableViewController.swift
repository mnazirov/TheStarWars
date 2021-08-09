//
//  ViewController.swift
//  TheStarWars
//
//  Created by Marat on 17.07.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var catalogOPeople: CatalogOfPeople? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        setupNavigatinBar()
        
        NetworkManager.shared.fetchPeople(urlJSON: "https://swapi.dev/api/people/?format=json") { people in
            self.catalogOPeople = people
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Private methods
    private func setupNavigatinBar() {
        title = "Characters"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = .black
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = navigationAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationAppearance
    }
    
    // MARK: Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        catalogOPeople?.results?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let persona = catalogOPeople?.results?[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.textProperties.color = .white
        
        content.text = persona?.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .black
    }
}

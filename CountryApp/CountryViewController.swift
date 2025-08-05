//
//  CountryViewController.swift
//  CountryApp
//
//  Created by Punhan Shahmurov on 02.08.25.
//

import UIKit

class CountryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countryTable: UITableView!
    
    var countries: [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Country list"
        
        let country1: Country = .init(name: "Azerbaijan", image: UIImage(named: "atl")!, city: [City(name: "Sumgait", image: UIImage(named: "atl")!, description: "salam"), City(name: "Baku", image: UIImage(named: "atl")!, description: "salam"), City(name: "Ismayilli", image: UIImage(named: "atl")!, description: "salam")])
        countries.append(country1)
        
        let country2: Country = .init(name: "Turkey", image: UIImage(named: "atl")!, city: [City(name: "Istanbul", image: UIImage(named: "atl")!, description: "salam"), City(name: "Ankara", image: UIImage(named: "atl")!, description: "salam"), City(name: "Antalya", image: UIImage(named: "atl")!, description: "salam")])
        countries.append(country2)
        
        countryTable.delegate = self
        countryTable.dataSource = self
        
        print(countries.count)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let country = countries[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryCell
        
        cell.name.text = country.name
        cell.countryImage.image = country.image
        
        print(country)
        print(cell)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countries[indexPath.row]
        
    }

}

struct Country {
    let name: String
    let image: UIImage
    let city: [City]
}

struct City{
    let name: String
    let image: UIImage
    let description: String
}

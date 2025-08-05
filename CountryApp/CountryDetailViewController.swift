//
//  CountryDetailViewController.swift
//  CountryApp
//
//  Created by Punhan Shahmurov on 02.08.25.
//

import UIKit

class CountryDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var cityTable: UITableView!
    
    var selectedCountry: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        cityTable.delegate = self
        cityTable.dataSource = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedCountry?.city.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        
        cell.cityLabel.text = selectedCountry?.city[indexPath.row].name
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let city = selectedCountry?.city[indexPath.row]
        
        let controller = storyboard?.instantiateViewController(identifier: "CityDetail") as! CityDetailViewController
        
        controller.selectedCity = city
        
        navigationController?.show(controller, sender: self)
        
    }
    


}

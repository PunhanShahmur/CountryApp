//
//  CityDetailViewController.swift
//  CountryApp
//
//  Created by Punhan Shahmurov on 02.08.25.
//

import UIKit

class CityDetailViewController: UIViewController {
    
    @IBOutlet weak var titleCity: UILabel!
    
    @IBOutlet weak var imageCity: UIImageView!
    
    @IBOutlet weak var descCity: UILabel!
    var selectedCity: City?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let city = selectedCity {
            
            titleCity.text = city.name
            imageCity.image = city.image
            descCity.text = city.description
            
        }
        
        
    }
    
}

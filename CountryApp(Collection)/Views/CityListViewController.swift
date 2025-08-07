//
//  CityListViewController.swift
//  CountryApp(Collection)
//
//  Created by Punhan Shahmurov on 07.08.25.
//

import UIKit

class CityListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var cityCollection: UICollectionView!
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = country?.name ?? "No Country"
        
        cityCollection.delegate = self
        cityCollection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let country = country, country.cities.count != 0 {
            return country.cities.count
        } else {
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityList", for: indexPath) as? CityList else {
            return UICollectionViewCell()
        }
        
        if let country = country {
            cell.cityName.text = country.cities[indexPath.row].name
        }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let controller = storyboard?.instantiateViewController(withIdentifier: "CityDetail") as? CityDetailViewController else {
            return
        }
        
        if let country = country {
            controller.city = country.cities[indexPath.row]
        }

        navigationController?.show(controller, sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.bounds.width, height: 46)
    }
    

}

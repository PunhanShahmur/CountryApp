//
//  CountryListViewController.swift
//  CountryApp(Collection)
//
//  Created by Punhan Shahmurov on 07.08.25.
//

import UIKit

class CountryListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var countryCollection: UICollectionView!
    
    var userEmail: String?
    
    var countries: [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let email = userEmail {
            
            title = "Hello, \(email)"
            
        }
        
//        let country1: Country = .init(name: "Azerbaijan", image: UIImage(named: "az")!, cities: [City(name: "Sumgait", image: UIImage(named: "atl")!, description: "salam"), City(name: "Baku", image: UIImage(named: "az")!, description: "salam"), City(name: "Ismayilli", image: UIImage(named: "ismayilli")!, description: "Rayonun ərazisi uzun müddət eramızdan əvvəl IV əsrin sonu III əsrin əvvəllərində yaranmış Albaniya dövlətinin tərkibində olmuşdur. Tarixi faktlar sübut edir ki, Cavanşirin mənsub olunduğu Mehranilər Girdiman knyazlığını məhz İsmayıllı ərazisində yaratmışdır. Cavanşir də bu nəsildən idi. Rayonun ərazisində Talıstan kəndindən 4 km şimalda, Ağçayın sahilində Cavanşirin adı ilə bağlı qala mövcuddur. Azərbaycanın şimal–mərkəz hissəsində yerləşən İsmayıllı rayonu 1931-ci ildə təşkil olunmuşdur. İlk vaxtlar rayonun inzibati mərkəzi Basqal kəndində olmuş, qısa müddətdən sonra İsmayıllı kəndinə köçürülmüşdür. Rayon təşkil edilənədək onun ərazisinin böyük bir hissəsi Göyçay qəzasının, bir hissəsi Şamaxı qəzasının, kiçik bir hissəsi isə Şəki qəzasının tərkibində olub. İsmayıllı şəhəri 1959-cu ilə qədər kənd, 1967-ci ilə qədər şəhər tipli qəsəbə olmuş, sonra şəhər adını almışdır.[5] İsmayıllı rayonu 1931-ci il noyabr ayının 24-də yaradılmışdır. 1939-cu ildən 1977-ci ilədək İsmayıllı rayonu Zəhmətkeş Deputatları Soveti İcraiyyə Komitəsi, 7 oktyabr 1977-ci ildən 17 oktyabr 1991-ci ilədək İsmayıllı rayon Xalq Deputatları Soveti İcraiyyə Komitəsi kimi fəaliyyət göstərmişdir. Azərbaycan Respublikası Prezidentinin 18 oktyabr 1991-ci il Fərmanına əsasən İsmayıllı rayon Xalq Deputatları Soveti ləğv edilmiş, onun əvəzində İsmayıllı rayon İcra Hakimiyyəti yaradılmış və 1991-ci ilin noyabr ayından bu adla fəaliyyət göstərir.[6]")])
//        countries.append(country1)
//        
//        let country2: Country = .init(name: "Turkey", image: UIImage(named: "atl")!, cities: [City(name: "Istanbul", image: UIImage(named: "atl")!, description: "salam"), City(name: "Ankara", image: UIImage(named: "atl")!, description: "salam"), City(name: "Antalya", image: UIImage(named: "atl")!, description: "salam")])
//        countries.append(country2)
        
        countries.append(contentsOf: [
            Country(
                name: "Azerbaijan",
                image: UIImage(named: "az")!,
                cities: [
                    City(name: "Sumgait", image: UIImage(named: "atl")!, description: "salam"),
                    City(name: "Baku", image: UIImage(named: "az")!, description: "salam"),
                    City(name: "Ismayilli", image: UIImage(named: "ismayilli")!, description: "Rayonun ərazisi uzun müddət eramızdan əvvəl IV əsrin sonu III əsrin əvvəllərində yaranmış Albaniya dövlətinin tərkibində olmuşdur. Tarixi faktlar sübut edir ki, Cavanşirin mənsub olunduğu Mehranilər Girdiman knyazlığını məhz İsmayıllı ərazisində yaratmışdır. Cavanşir də bu nəsildən idi. Rayonun ərazisində Talıstan kəndindən 4 km şimalda, Ağçayın sahilində Cavanşirin adı ilə bağlı qala mövcuddur. Azərbaycanın şimal–mərkəz hissəsində yerləşən İsmayıllı rayonu 1931-ci ildə təşkil olunmuşdur. İlk vaxtlar rayonun inzibati mərkəzi Basqal kəndində olmuş, qısa müddətdən sonra İsmayıllı kəndinə köçürülmüşdür. Rayon təşkil edilənədək onun ərazisinin böyük bir hissəsi Göyçay qəzasının, bir hissəsi Şamaxı qəzasının, kiçik bir hissəsi isə Şəki qəzasının tərkibində olub. İsmayıllı şəhəri 1959-cu ilə qədər kənd, 1967-ci ilə qədər şəhər tipli qəsəbə olmuş, sonra şəhər adını almışdır.[5] İsmayıllı rayonu 1931-ci il noyabr ayının 24-də yaradılmışdır. 1939-cu ildən 1977-ci ilədək İsmayıllı rayonu Zəhmətkeş Deputatları Soveti İcraiyyə Komitəsi, 7 oktyabr 1977-ci ildən 17 oktyabr 1991-ci ilədək İsmayıllı rayon Xalq Deputatları Soveti İcraiyyə Komitəsi kimi fəaliyyət göstərmişdir. Azərbaycan Respublikası Prezidentinin 18 oktyabr 1991-ci il Fərmanına əsasən İsmayıllı rayon Xalq Deputatları Soveti ləğv edilmiş, onun əvəzində İsmayıllı rayon İcra Hakimiyyəti yaradılmış və 1991-ci ilin noyabr ayından bu adla fəaliyyət göstərir.")
                ]
            ),
            Country(
                name: "Turkey",
                image: UIImage(named: "atl")!,
                cities: [
                    City(name: "Istanbul", image: UIImage(named: "atl")!, description: "salam"),
                    City(name: "Ankara", image: UIImage(named: "atl")!, description: "salam"),
                    City(name: "Antalya", image: UIImage(named: "atl")!, description: "salam")
                ]
            )
        ])
        
        countryCollection.delegate = self
        countryCollection.dataSource = self

        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryList", for: indexPath) as? CountryList else {
            return UICollectionViewCell()
        }
        
        cell.countryImage.layer.cornerRadius = 30
        
        cell.countryImage.image = countries[indexPath.row].image
        cell.countryName.text = countries[indexPath.row].name
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let controller = storyboard?.instantiateViewController(identifier: "CityList") as? CityListViewController else { return }
        
        controller.country = countries[indexPath.row]
        
        navigationController?.show(controller, sender: nil)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        CGSize(width: view.bounds.width, height: 76)
        
    }
    
    

}

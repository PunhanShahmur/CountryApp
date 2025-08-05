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
        
        let country1: Country = .init(name: "Azerbaijan", image: UIImage(named: "az")!, city: [City(name: "Sumgait", image: UIImage(named: "atl")!, description: "salam"), City(name: "Baku", image: UIImage(named: "az")!, description: "salam"), City(name: "Ismayilli", image: UIImage(named: "ismayilli")!, description: "Rayonun ərazisi uzun müddət eramızdan əvvəl IV əsrin sonu III əsrin əvvəllərində yaranmış Albaniya dövlətinin tərkibində olmuşdur. Tarixi faktlar sübut edir ki, Cavanşirin mənsub olunduğu Mehranilər Girdiman knyazlığını məhz İsmayıllı ərazisində yaratmışdır. Cavanşir də bu nəsildən idi. Rayonun ərazisində Talıstan kəndindən 4 km şimalda, Ağçayın sahilində Cavanşirin adı ilə bağlı qala mövcuddur. Azərbaycanın şimal–mərkəz hissəsində yerləşən İsmayıllı rayonu 1931-ci ildə təşkil olunmuşdur. İlk vaxtlar rayonun inzibati mərkəzi Basqal kəndində olmuş, qısa müddətdən sonra İsmayıllı kəndinə köçürülmüşdür. Rayon təşkil edilənədək onun ərazisinin böyük bir hissəsi Göyçay qəzasının, bir hissəsi Şamaxı qəzasının, kiçik bir hissəsi isə Şəki qəzasının tərkibində olub. İsmayıllı şəhəri 1959-cu ilə qədər kənd, 1967-ci ilə qədər şəhər tipli qəsəbə olmuş, sonra şəhər adını almışdır.[5] İsmayıllı rayonu 1931-ci il noyabr ayının 24-də yaradılmışdır. 1939-cu ildən 1977-ci ilədək İsmayıllı rayonu Zəhmətkeş Deputatları Soveti İcraiyyə Komitəsi, 7 oktyabr 1977-ci ildən 17 oktyabr 1991-ci ilədək İsmayıllı rayon Xalq Deputatları Soveti İcraiyyə Komitəsi kimi fəaliyyət göstərmişdir. Azərbaycan Respublikası Prezidentinin 18 oktyabr 1991-ci il Fərmanına əsasən İsmayıllı rayon Xalq Deputatları Soveti ləğv edilmiş, onun əvəzində İsmayıllı rayon İcra Hakimiyyəti yaradılmış və 1991-ci ilin noyabr ayından bu adla fəaliyyət göstərir.[6]")])
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
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countries[indexPath.row]
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "CountryDetail") as! CountryDetailViewController
        
        controller.selectedCountry = country
        
        navigationController?.show(controller, sender: nil)

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

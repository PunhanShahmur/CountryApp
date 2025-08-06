//
//  CountryCell.swift
//  CountryApp
//
//  Created by Punhan Shahmurov on 06.08.25.
//

import UIKit

class CountryCell: UITableViewCell {

    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

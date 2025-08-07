//
//  ViewController.swift
//  CountryApp(Collection)
//
//  Created by Punhan Shahmurov on 06.08.25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func loginTapped(_ sender: Any) {
        
        
        if let email = emailInput.text, !email.isEmpty, let password = passwordInput.text, !password.isEmpty, password.count >= 5, password.count <= 15 {
            
            errorLabel.isHidden = true
            
            guard let controller = storyboard?.instantiateViewController(withIdentifier: "CountryList") as? CountryListViewController else { return }
            
            controller.userEmail = email
            
            navigationController?.show(controller, sender: nil)
            
        } else {
            
            errorLabel.isHidden = false
            
        }
        
    }
    
}


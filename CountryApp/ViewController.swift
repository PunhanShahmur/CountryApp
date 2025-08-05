//
//  ViewController.swift
//  CountryApp
//
//  Created by Punhan Shahmurov on 02.08.25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginImage: UIImageView!
    
    @IBOutlet weak var emailInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func login(_ sender: Any) {
        
        if !(emailInput.text?.isEmpty ?? false), passwordInput.text?.count ?? 0 >= 5,
           passwordInput.text?.count ?? 0 <= 10 {
            
            errorLabel.isHidden = true
            
            print("a")
            
            let controller = storyboard?.instantiateViewController(withIdentifier: "CountryViewController") as! CountryViewController
            
            controller.modalPresentationStyle = .fullScreen
            
            show(controller, sender: nil)
            
        } else {
            print("ab")
            errorLabel.isHidden = false
        }
        
    }
    
}


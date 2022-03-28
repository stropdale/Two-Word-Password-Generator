//
//  ViewController.swift
//  Password_Generator
//
//  Created by Richard Stockdale on 14/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordField: UILabel!
    let pwGen = PasswordGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    private func update() {
        let password = pwGen.newPassword()
        passwordField.text = password
    }

    @IBAction func againTapped(_ sender: Any) {
        update()
    }
}


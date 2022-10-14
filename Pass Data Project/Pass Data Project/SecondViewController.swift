//
//  SecondViewController.swift
//  Pass Data Project
//
//  Created by iggy on 31.08.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?

    @IBOutlet weak var userName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let login = self.login else { return } 
        userName.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        
    }
    
   
}

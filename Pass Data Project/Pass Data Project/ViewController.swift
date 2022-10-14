//
//  ViewController.swift
//  Pass Data Project
//
//  Created by iggy on 31.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        // Переход по SegueIndentifire c помощью кнопки
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    // Закрытие второго VC с помощью кнопки(реализуеться на втором VC в Storyboard, но в коде на VC, на который переходим и передача данных в обратном направлении
    @IBAction func unwindSegueToMainStoryboardScreen(segue: UIStoryboardSegue) {
        guard let sourceVC = segue.source as? SecondViewController else { return }
        self.resultLabel.text = sourceVC.userName.text
    }
    
    // Передача данных и переход по SegueDestination
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? SecondViewController else { return }
        destinationVC.login = loginTextField.text
    }
    
    
    
    // Скрытие клавиатуры
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


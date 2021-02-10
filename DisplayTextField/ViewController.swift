//
//  ViewController.swift
//  DisplayTextField
//
//  Created by Kévin VOYER on 10/02/2021.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.label.text = textField.text
        return true
    }
}


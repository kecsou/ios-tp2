//
//  ViewController.swift
//  DisplayTextField
//
//  Created by Kévin VOYER on 10/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clear(_ sender: Any) {
        self.label.text = ""
        self.textField.text = ""
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.label.text = textField.text
        return true
    }
}

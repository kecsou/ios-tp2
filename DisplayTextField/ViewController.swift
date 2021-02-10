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
    @IBOutlet var textView: UITextView!
    var todoList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clear(_ sender: Any) {
        self.label.text = ""
        self.textField.text = ""
        self.todoList = [String]()
        self.textView.text = ""
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let myValue = textField.text {
            self.todoList.append(myValue)
        }

        self.textView.text = self.todoList.reduce("", { (result, todo) -> String in
            return "\(result)\n\(todo)"
        })

        textField.text = ""
        return true
    }
}

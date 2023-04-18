//
//  ViewController.swift
//  binaryCalculator
//
//  Created by Abduraxmon on 18/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var binaryNumbers: [UIButton]!
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBAction func eqqelPressed(_ sender: Any) {
        view.endEditing(true)
        refresh()
        calculate()
    }
    
    func calculate() {
        var number = Int(textField.text ?? "0") ?? 0
        
        for button in binaryNumbers {
            if number != 0 {
                if button.tag <= number {
                    button.setTitle("1", for: .normal)
                    number -= button.tag
                } else {
                    button.setTitle("0", for: .normal)
                }
            } else {
                return
            }
        }
    }

    func refresh() {
        for button in binaryNumbers {
            button.setTitle("0", for: .normal)
        }
    }
    
}


//
//  ViewController.swift
//  M2Calculator_Peeples
//
//  Created by Brayden Peeples on 1/27/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operand1TextField: UITextField!
    @IBOutlet weak var operand2TextField: UITextField!
    @IBOutlet weak var selectOperator: UIButton!
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction = UIAlertAction(title: "+", style: .default) { _ in
            self.selectOperator.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        let minusAction = UIAlertAction(title: "-", style: .default) { _ in
            self.selectOperator.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        let multiplyAction = UIAlertAction(title: "*", style: .default) { _ in
            self.selectOperator.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        let divideAction = UIAlertAction(title: "/", style: .default) { _ in
            self.selectOperator.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        actionSheet.addAction(cancelAction)
        present(actionSheet, animated: true)
    }
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func resultButton(_ sender: Any) {
        let op1 = Int(operand1TextField.text!)!
        let op2 = Int(operand2TextField.text!)!
        let op = selectOperator.title(for: .normal)
        
        if op == "+" {
            let result = op1 + op2
            resultLabel.text = "\(result)"
        }
        else if op == "-" {
            let result = op1 - op2
            resultLabel.text = "\(result)"
        }
        else if op == "*" {
            let result = op1 * op2
            resultLabel.text = "\(result)"
        }
        else if op == "/" {
            let result = op1 / op2
            resultLabel.text = "\(result)"
        }
        else {
            print("Invalid Operator")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// command + B to build
// command + R to run

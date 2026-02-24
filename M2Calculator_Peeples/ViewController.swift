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
        //let op1 = Int(operand1TextField.text!)!
        //let op2 = Int(operand2TextField.text!)!
        //let op = selectOperator.title(for: .normal)!
        
        func showAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
        
        
        guard let op1 = operand1TextField.text, let a = Int(op1) else {
            
            showAlert(message: "Please enter a valid number")
            
          return
        }
        guard let op2 = operand2TextField.text, let b = Int(op2) else {
            
            showAlert(message: "Please enter a valid number")
            
           return
        }
        guard let op = selectOperator.title(for: .normal), op != "?" else {
            
            showAlert(message: "Please select an operator")
            
          return
        }
        
        var result: Int? = nil
        
        switch op {
        case "+":
            result = a + b
        case "-":
            result = a - b
        case "*":
            result = a * b
        case "/":
            result = a / b
        default:
            print("Invalid Operator")
        }
        
        guard let result = result else {
            return
        }
        resultLabel.text = "\(result)"
        
        
        /*
        if op == "+" {
            let result = a + b
            resultLabel.text = "\(result)"
        }
        else if op == "-" {
            let result = a - b
            resultLabel.text = "\(result)"
        }
        else if op == "*" {
            let result = a * b
            resultLabel.text = "\(result)"
        }
        else if op == "/" {
            let result = a / b
            resultLabel.text = "\(result)"
        }
        else {
            print("Invalid Operator")
        }
        */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// command + B to build
// command + R to run

//
//  ViewController.swift
//  Swift Practice # 51 BMI
//
//  Created by CHEN PEIHAO on 2021/8/5.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    //收鍵盤
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        }
        @objc func dismissKeyboard() {
        view.endEditing(true)
        }

    //BMI LABEL
    @IBOutlet weak var showBMILabel: UILabel!
    //提醒
    @IBOutlet weak var resultLabel: UILabel!
    //身高的值
    @IBOutlet weak var heightUITextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //收鍵盤
        hideKeyboardWhenTappedAround()
    }

    @IBAction func BMICalculate(_ sender: UITextField) {
        //取身高的值
        let cmHeight = Float(String(heightUITextField.text ?? ""))
        //取體重的值
        let kgWeight = Float(String(sender.text ?? ""))
        //BMI計算
        let bMI = (kgWeight ?? 0)/(((cmHeight ?? 0)/100) * ((cmHeight ?? 0)/100))
        showBMILabel.text = String(format: "%.2f", bMI)
        
        //判斷最下方label顯示內容

        
        if bMI < 18.5 {
            resultLabel.text = "也太瘦請增重"
            resultLabel.textColor = .blue
        }else if bMI > 18.5 && bMI < 24 {
            resultLabel.text = "正常繼續維持"
            resultLabel.textColor = .black
        }else if bMI > 24 {
            resultLabel.text = "你超胖請減肥"
            resultLabel.textColor = .red
        }
    }
    
        

        
    }
    



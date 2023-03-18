//
//  ViewController.swift
//  Kadai5-UIKit
//
//  Created by sako0602 on 2023/03/15.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    
    private let title1 = "課題５"
    var message = ""//ここではなく関数の中でMessageをかけるようにする

    @IBOutlet weak var numText1: UITextField!
    @IBOutlet weak var numText2: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var division: UILabel!
    
    @IBAction func divideButton(_ sender: Any) {

        guard let unwrappedNum1 = Int(numText1.text ?? "")  else {
            print(">>>1")
            presentAlert(message: "左が空よ")
            return
        }
        guard let unwrappedNum2 = Int(numText2.text ?? "")  else {
            print(">>>2")
            presentAlert(message: "右が空")
            return
        }
        guard unwrappedNum2 != 0 else {
            print(">>>3")
            print(type(of: unwrappedNum2))
            print("number",unwrappedNum2)
            presentAlert(message: "割る数に0はダメっす")
            return
        }
        
        print("すべてOK")
        print(">>>num1,num2",unwrappedNum1,unwrappedNum2)
        
        answerLabel.text = String(unwrappedNum1 / unwrappedNum2)
        
    }
    //アラートを作成
    func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        //アラートを表示
        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let division = "÷"
        answerLabel.text = String(count)
        self.division.text = division
    }
}


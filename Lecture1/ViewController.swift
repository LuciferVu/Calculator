//
//  ViewController.swift
//  Lecture1
//
//  Created by Vũ Khoa Đức on 29/03/2017.
//  Copyright © 2017 Duc Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var numberZero: UIButton!
    @IBOutlet weak var numberOne: UIButton!
    @IBOutlet weak var numberTwo: UIButton!
    @IBOutlet weak var numberThree: UIButton!
    @IBOutlet weak var numberFour: UIButton!
    @IBOutlet weak var numberFive: UIButton!
    @IBOutlet weak var numberSix: UIButton!
    @IBOutlet weak var numberSeven: UIButton!
    @IBOutlet weak var numberEight: UIButton!
    @IBOutlet weak var numberNine: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var multiplier: UIButton!
    @IBOutlet weak var subtraction: UIButton!
    @IBOutlet weak var addition: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var minius: UIButton!
    @IBOutlet weak var percent: UIButton!
    
    var number = ""
    
    var testSourceTree = "haha"
    
    var themChinhSua = ""
    
    var arrayNumber = [Double]()
    
    var calculator = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad") // 1: bộ nhớ ngoài đưa vào RAM
    }
    
    func divide(a: Double, b: Double) -> Double {
        return a / b
    }
    
    func multiplier(a: Double, b: Double) -> Double {
        return a * b
    }
    
    func subtraction(a: Double, b: Double) -> Double {
        return a - b
    }
    
    func addition(a: Double, b: Double) -> Double {
        return a + b
    }
    
    func percent(a: Double) -> Double {
        return a / 100
    }
    
    func numberLabel() {
        self.result.text = number // thay doi label
    }
    
    @IBAction func getNumber(_ sender: UIButton) {
        self.number += sender.titleLabel!.text! // cong don String
        numberLabel()
    }

    @IBAction func calculation(_ sender: UIButton) {
        if calculator == "" {
            calculator = sender.titleLabel!.text!
        }
        guard let firstNumber = Double(number) else {
            return
        }
        number = ""
        arrayNumber.append(firstNumber)
        guard arrayNumber.count == 2 else {
            return
        }
        var result: Double = 0
        if calculator == "/" {
            result = divide(a: arrayNumber[0], b: arrayNumber[1])
            
        } else if calculator == "x" {
            result = multiplier(a: arrayNumber[0], b: arrayNumber[1])
        } else if calculator == "-" {
            result = subtraction(a: arrayNumber[0], b: arrayNumber[1])
        } else if calculator == "+" {
            result = addition(a: arrayNumber[0], b: arrayNumber[1])
        }
        self.result.text = "\(result)"
        arrayNumber[0] = result
        arrayNumber.remove(at: 1)
        if calculator == "="{
            result = arrayNumber[0]
        } else {
            calculator = (sender.titleLabel?.text)!
        }
    }
    
    func test() {

        print("test lan thu 2")

    }
    
    @IBAction func Clear(_ sender: UIButton) {
        
        number = ""
        numberLabel()
        arrayNumber.removeAll()
        calculator = "" 
    }
    
    @IBAction func amDuong(_ sender: UIButton) {
//        print(sender.titleLabel!.text)
    }
    
    @IBAction func percent(_ sender: UIButton) {
//        print(sender.titleLabel!.text)
    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("viewWillAppear") // 2: View chuẩn bị được hiển thị
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("viewDidAppear") // 5: các layout đã hiện trên màn hình
//    }
//    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        print("viewWillLayoutSubviews") // 3: các layout chuẩn bị được sắp xếp lại . bước 7:
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        print("viewDidLayoutSubviews") //4: các layout được sắp xếp xong . bước 8:
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("viewWillDisappear") // 6: chuẩn bị biến mất
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("viewDidDisappear") // 8
//    }

}


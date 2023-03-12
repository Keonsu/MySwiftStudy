//
//  ViewController.swift
//  MyClosure
//
//  Created by Keonsu Jin on 2023/03/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        closureTest()
    }

    func moveBackward(_ s1: String, _ s2: String) -> Bool {
        return s1 > s2
    }
    
    func moveForward(_ s1: String, _ s2: String) -> Bool {
        return s1 < s2
    }
    
    func closureTest() {
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        
        //#1
//        let backNames = names.sorted(by: moveBackward)
        let forNames = names.sorted(by: moveForward)
//
//        print(backNames)
        print(forNames)
        
        //#2
        let backNames1 = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })
        let backNames2 = names.sorted(by: { s1, s2 in return s1 > s2 })
        let backNames3 = names.sorted(by: { s1, s2 in s1 > s2 })
        let backNames4 = names.sorted(by: { $0 > $1 })
        let backNames5 = names.sorted(by: > )
        let backNames6 = names.sorted { $0 > $1 }
        let backNames7 = names.sorted() { $0 > $1 }
        
        print(backNames2)
        print(backNames6)
    }
}


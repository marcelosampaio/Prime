//
//  ViewController.swift
//  Prime
//
//  Created by Marcelo on 7/8/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var number: UITextField!
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - UI Actions
    @IBAction func proceed(_ sender: Any) {
        if (number.text?.isEmpty)! {
            return
        }
        print("proceed action")
        let result = isPrime(Int(number.text!)!)
        
    }
    
    // MARK: - Prime Engine Helper
    private func isPrime(_ number: Int) -> Bool {
        
        for i in (1...number).reversed() {
            print("👻 i: \(i)")
        }
        
        return false
    }
    
    
    private func nextPrime(_ number: Int) -> Int {
        
        var found = false
        var i = 0
        while found == false {
            print("☠️..... looping \(i)")
            i = i + 1
            
            if i>2 {
                found = true
            }

        }
    
        return 0
    }
    
    
    
    

}


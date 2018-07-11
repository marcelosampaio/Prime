//
//  ViewController.swift
//  Prime
//
//  Created by Marcelo on 7/8/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    var gradientLayer: CAGradientLayer!
    
    
    // MARK: - Outlets
    @IBOutlet weak var number: UITextField!
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        makeGradient()
    
    }

    // MARK: - UI Config
    private func makeGradient() {
        let fromColor = UIColor(red: 38/255, green: 166/255, blue: 154/255, alpha: 1)
        let toColor = UIColor(red: 234/255, green: 83/255, blue: 81/255, alpha: 1)
        
        
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [fromColor.cgColor, toColor.cgColor]
        self.view.layer.addSublayer(gradientLayer)
    }
    
    
    // MARK: - UI Actions
    @IBAction func proceed(_ sender: Any) {
        if (number.text?.isEmpty)! {
            return
        }
        print("proceed action")
        let result = isPrime(Int(number.text!)!)
        
    }
    
    // MARK: - Alert Helper
    private func alert(message: String){
        let alertController = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            //            print("OK Action")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true) {
            // completion
        }
        
        
    }
    
    
    
    // MARK: - Prime Engine Helper
    private func isPrime(_ number: Int) -> Bool {
        
        var noReminderCount = 0
        for i in (1...number).reversed() {
            print("👻 i: \(i)")
            let remainder = number % i
            if remainder == 0 {
                noReminderCount = noReminderCount + 1
            }
        }
        // check no reminder count
        if noReminderCount == 2 {
            // this is a prime number
            alert(message: "This is a prime number 👍")
        }else{
            alert(message: "NOT prime 👎")
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


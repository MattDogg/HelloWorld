//
//  ViewController.swift
//  HelloWorld
//
//  Created by Matt Dickerson on 10/24/14.
//  Copyright (c) 2014 MattDogg. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    let greetings: [String] = ["Hi","Hello","Howdy","Hey"]
    var cycle = 0
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var buttonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let aGreeting = randomGreetings()
        println(aGreeting)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
    aGreeting() -> String {
    
        
    }
    returns aGreeting
    
    
    func sample()  {
        
    }
    returns nothing
    */


    func randomGreetings() -> String {
        
        let randomIndex = arc4random_uniform(UInt32(greetings.count))
        let randomGreetings = greetings[randomIndex.hashValue]
        
        return randomGreetings
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pushButton(nameButton: UIButton) {
       // buttonLabel.text = "hi(nameTextField.text)"
    }
    
    @IBAction func helloWorldAction(nameTextField: UITextField) {
        nameLabel.text = "\(greetings[cycle]) \(nameTextField.text)"
        cycle = cycle + 1
        if cycle > countElements(greetings)-1 {
            cycle = 0
        }
    }
}


//
//  ViewController.swift
//  HelloWorld
//
//  Created by Matt Dickerson on 10/24/14.
//  Copyright (c) 2014 MattDogg. All rights reserved.
//

import UIKit
import Foundation

class Sample {

    
}

class ViewController: UIViewController {
    
    
    let listOne = [2, 3, 5, 6]
    let valueOne = 2
    
    let listTwo = ["one", "two", "three"]
    let valueTwo = "one"
    
    let listThree = [Sample(), Sample(), Sample()]
    
    
    //What is the type of listOne?
    //What is the type of valueOne?
    //What is the type of listOne[2]?
    //What is the value of listOne[2]?
    //What is the value of valueOne?
    
    //What is the type of listTwo?
    //What is the type of valueTwo?
    //What is the type of listTwo[2]?
    //What is the value of listTwo[2]?
    //What is the value of valueTwo?
    
    
    //What is the type of listThree?
    //What is the type of listThree[2]?
    
    
    
    let greetings:[String] = ["Hi","Hello","Howdy","Hey"]
    var cycle:Int = 0
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var buttonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
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
       
        //e.g. let myGreeting = "hi"
        let myGreeting: String = randomGreetings()
        //alternate way --> let myGreeting: String = greetings[cylce]
        
        //What appears in text field
        nameLabel.text = "\(myGreeting) \(nameTextField.text)"
       
       
        /*
            Example of cycling through elements of array
        cycle = cycle + 1
        if cycle > countElements(greetings)-1 {
            cycle = 0
        }*/
    }
}


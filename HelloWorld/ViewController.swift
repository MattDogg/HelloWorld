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

func isDivisibleByThree(cool: Int) ->Bool{
    let remainder = cool % 3
    if remainder == 0{
        let answer = true
        return answer
    }else{
        let answer = false
        return answer
    }
    //let answer = cool % 3 == 0
    
    
}






func mySum(myNumbers: [Int]) ->Int {
    var sum: Int = 0
    for num in myNumbers {
        isDivisibleByThree(num)
        let result = isDivisibleByThree(num)
       // only print if divisible by three
        if isDivisibleByThree(num){
            sum = sum + num
           // println(num)
        }
       
        
        
    }
    return sum
}


class ViewController: UIViewController {
    
    
    let listOne:[Int] = [2, 3, 5, 6]
    let valueOne: Int = 2
    
    let listTwo = ["one", "two", "three"]
    let valueTwo = "one"
    
    let listThree = [Sample(), Sample(), Sample()]
    let valueThree:Sample = Sample()
    
    //What is the type of listOne? --> [Int]  array/list of Ints
    //What is the type of valueOne? --> 2
    //What is the type of listOne[2]? --> Int
    //What is the value of listOne[2]? --> 5
    //What is the value of valueOne? --> 2
    
    //What is the type of listTwo? --> [String] = array/list of Strings
    //What is the type of valueTwo? --> String
    //What is the type of listTwo[2]? --> String
    //What is the value of listTwo[2]? --> three
    //What is the value of valueTwo? --> one
    
    
    //What is the type of valueThree? Sample
    //What is the type of listThree? --> [Sample] array/list of Samples
    //What is the type of listThree[2]? --> Sample
    
    
    
    let greetings:[String] = ["Hi","Hello","Howdy","Hey","Cheerio","Hola","Bonjour"]
    var cycle:Int = 0
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var buttonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let numbers = [9,10,30,1,12,11,24]
        let numbers2 = [9,10,1,12,11,24]
        
        println(mySum(numbers))
        println(mySum(numbers2))
        
        
        // Do any additional setup after loading the view, typically from a nib.
        let values: Int = sum(x: 2, y: 6)
       // println(values)
        
        
        
        //Test my isDivisibleByThree func
        let result = isDivisibleByThree(17)
        //println("Is 12 divisible by 3 \(result)")
    }
    
    
    //Takes only Int's that are divisible by 3


    
    /*Write a function that takes two parameters, they are both Ints.  Add those two numbers to together
    and return the sums, an Int*/
    
    func sum(# x: Int, y: Int) -> Int {
        return x + y
    }
    
    //randomly selects element from array
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
        let saySomething: String = randomGreetings()
        buttonLabel.text = "\(saySomething) \(buttonLabel.text)"
    }
    
    //causes text to change to one of the elements from array
    @IBAction func helloWorldAction(nameTextField: UITextField) {
       
        //let myGreeting:String = "hi"
        let myGreeting:String = randomGreetings()
        let myGreeting2:String = greetings[0]
        
        //alternate way --> let myGreeting: String = greetings[cylce]
        
        //What appears in text field
        nameLabel.text = "\(myGreeting) \(nameTextField.text)"
        
        /*let x:String = greetings[0]
          nameLabel.text = "\(x) \(nameTextField.text)"
        
        nameLabel.text = "\(greetings[cycle]) \(nameTextField.text)"
        does the same as this ^^^^
        let cylceText:String = greetings[cycle]
        nameLabel.text = "\(cylceText) \(nameTextField.text)"*/

        
        /*    Example of cycling through elements of array
        cycle = cycle + 1
        if cycle > countElements(greetings)-1 {
            cycle = 0
        }*/
    }
}








/*Write a function that takes a list of Ints and sums only the values that are divisble by 3
    mySum[9,10,30,1,12,11,24]== 75*/









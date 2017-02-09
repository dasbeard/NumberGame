//
//  ViewController.swift
//  GreatNumberGame
//
//  Created by Das Beard on 2/8/17.
//  Copyright © 2017 dasBeard. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    var newNumber:Int = 0

    
    @IBOutlet weak var guessInput: UITextField!
    
    @IBOutlet weak var guessLabel: UILabel!
    

    @IBAction func submitButton(_ sender: UIButton) {
        let guess = guessInput.text!
        
        print ("Guess", guess)
        print ("randNum", newNumber)
        
        self.guessInput.text = ""
        
        if Int(guess) == newNumber {
            let alertWin = UIAlertController(title: "Congratulations!", message: "You guessed \(guess) the right number!", preferredStyle: UIAlertControllerStyle.alert)
            alertWin.view.backgroundColor = UIColor.green
            alertWin.addAction(UIAlertAction(title: "Play Again!", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) in
                // Run Function Here
                self.newRandomNumber()
            }))
            self.present(alertWin, animated: true, completion: nil)
        }
        
        
        if Int(guess)! > newNumber
        {
            let alertHigh = UIAlertController(title: "To High!", message: "\(guess) was too high!", preferredStyle: UIAlertControllerStyle.alert)
            alertHigh.view.backgroundColor = UIColor.red
            alertHigh.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) in
                // Run Function Here
            }))
            self.present(alertHigh, animated: true, completion: nil)
            
        } else if Int(guess)! < newNumber {
            let alertLow = UIAlertController(title: "To Low!", message: "\(guess) was too low!", preferredStyle: UIAlertControllerStyle.alert)
            alertLow.view.backgroundColor = UIColor.red
            alertLow.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) in
                // Run Function Here
            }))
            self.present(alertLow, animated: true, completion: nil)
            
        }
        
        
        
        
        
        

    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newNumber = Int(arc4random_uniform(100) + 1)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func newRandomNumber(){
        newNumber = Int(arc4random_uniform(100) + 1)
    }
    
    

}



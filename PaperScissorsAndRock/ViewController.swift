//
//  ViewController.swift
//  PaperScissorsAndRock
//
//  Created by Ravi Rathore on 12/26/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        
        switch segue.identifier!
        {
        case "paperButtonSegue" :
            let destinationController = segue.destinationViewController as! ComputerViewController
            //  print(destinationController.humanAttack)
            destinationController.humanAttack = typeOfAttack.Paper
        case "rockButtonSegue":
            let destinationController = segue.destinationViewController as! ComputerViewController
            //  print(destinationController.humanAttack)
            destinationController.humanAttack = typeOfAttack.Rock
        default:
            print("segue not found")
       
        }
    }
    @IBAction func rockButton(sender: UIButton) {
        print("here")
        self.performSegueWithIdentifier(segueIdentifiers.rockButton.rawValue, sender: nil)
    }


    @IBAction func scissorsButton(sender: UIButton) {
        print("blah")
        let destination = self.storyboard?.instantiateViewControllerWithIdentifier("ComputerViewController") as! ComputerViewController
        destination.humanAttack = typeOfAttack.Scissors
    self.presentViewController(destination, animated: true, completion: nil)
    }
}


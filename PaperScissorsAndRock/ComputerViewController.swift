//
//  ComputerViewController.swift
//  PaperScissorsAndRock
//
//  Created by Ravi Rathore on 12/26/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import UIKit

class ComputerViewController: UIViewController {
    
  
    @IBOutlet weak var resultLabel: UILabel!
    var humanAttack : typeOfAttack!
    var computerAttack : typeOfAttack!
    
    @IBOutlet weak var computerattack: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        computerAttack = calculateRandomAttack()
       
        print("HUMAN: \(humanAttack) Computer:\(computerAttack)")
        let result:(finalResult:Result,player:Player?) = calculateResult(humanAttack, computerAttack: computerAttack)
        
        resultLabel.text = "\(result.finalResult.rawValue) . \n \( result.player?.rawValue ?? "Noone") won"
         computerImage(result.finalResult)
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func computerImage(result:Result)
    {
        var image : UIImage!
        
        switch result
        {
        case .rockCrusheshScissors:
            image = UIImage(named: "RockCrushesScissors")
        case .paperCoversRock :
            image = UIImage(named: "PaperCoversRock")
        case  .scissorsCutPaper:
            image = UIImage(named: "ScissorsCutPaper")
        case .tie:
            image = UIImage(named: "itsATie")
        }
        computerattack.image = image
    }
 
    @IBAction func backToMainScreen(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


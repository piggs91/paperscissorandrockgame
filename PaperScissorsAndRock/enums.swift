//
//  enums.swift
//  PaperScissorsAndRock
//
//  Created by Ravi Rathore on 12/26/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import Foundation
let priority : [typeOfAttack:typeOfAttack]  = [ .Rock:.Scissors , .Paper:.Rock , .Scissors:.Paper ]

enum typeOfAttack:Int
{
    case Rock=0,Scissors,Paper
    
}
enum Result:String
{
    case tie="It is a Tie",paperCoversRock="Paper Covers Rock",rockCrusheshScissors="Rock crushesh Sciccors",scissorsCutPaper="Scissors cut paper"
}

func returnResultStringForWin(move:typeOfAttack) -> Result
{
    switch move
    {
    case .Paper :
        return Result.paperCoversRock
    case .Rock :
        return .rockCrusheshScissors
    case .Scissors:
        return .scissorsCutPaper
    
    }
}
enum Player:String
{
    case Human="You",Computer="Computer"
}

func calculateResult(humanAttack:typeOfAttack , computerAttack: typeOfAttack) -> (Result,Player?)
{   
    if (humanAttack.rawValue == computerAttack.rawValue)
    {
       // print("It is a tie")
        
        return (Result.tie,nil)
    }
    else
    {
        
        
        if ( priority[humanAttack] == computerAttack )
        {
           // print("human won")
            return (returnResultStringForWin(humanAttack),Player.Human)
            
        }
        else
        {
           // print("computer won")
            return  (returnResultStringForWin(computerAttack),Player.Computer)
        }
        
    }
    
}




func calculateRandomAttack() -> typeOfAttack
{
 //   print("calculating random")
    let attack = typeOfAttack(rawValue: Int(arc4random()%3))
    return attack!
}

enum segueIdentifiers : String
{
    case paperButton = "paperButtonSegue"
    case rockButton = "rockButtonSegue"
}



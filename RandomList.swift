//
//  RandomList.swift
//  FlashPickGame
//
//  Created by David Fitzgerald on 10/7/16.
//  Copyright © 2016 David Fitzgerald. All rights reserved.
//

import UIKit

class RandomList {
    var colorChoice = [Int]()
    var playerTurn = true
    
    var currentLevel = 0
    
    init()
    {
        for _ in 0...100 {
            let diceRoll = Int(arc4random_uniform(4))
            //print(diceRoll)
            colorChoice.append(diceRoll)
        }/*
        // Do any additional setup after loading the view, typically from a nib.
        if playerTurn == false 
        {
            for var index = 0; index < colorChoice.count; index = index + 1 
            {
                if colorChoice[index] == 0 
                {
                    
                } else if colorChoice[index] == 0 {
                    //RedButtonController()
                } else if colorChoice[index] == 0 {
                    //YellowButtonController(sender, forEvent: event)
                } else {
                    //BlueButtonController(sender, forEvent: event)
                }
            }
        }*/
        
    }
    func setTurn() {
        if (playerTurn == true){
            playerTurn = false
        } else {
            playerTurn = true
        }
    }
    
    
    
    func levelUp(){
        currentLevel += 1
    }
}

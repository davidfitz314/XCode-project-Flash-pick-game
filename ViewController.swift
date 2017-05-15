//
//  ViewController.swift
//  FlashPickGame
//
//  Created by David Fitzgerald on 9/19/16.
//  Copyright © 2016 David Fitzgerald. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    @IBOutlet var ScoreCounter: UILabel!
    @IBOutlet var nextColor: UILabel!
    
    var initialScore = 0
    var listofColors = RandomList()
    var counter = 0
    var counterTwo = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //init the for loop set up the array
        computerTurn()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    //checks score and calls update functions
    var scoreTime: Int? {
        didSet {
            updateScore()
        }
    }

    
    //makes the label display the corectly formatted number
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    //updates score every time it is changed
    func updateScore() {
        if let value = scoreTime {
            ScoreCounter.text = numberFormatter.stringFromNumber(value)
        }
        else {
            ScoreCounter.text = "???"
        }
    }
    
    @IBAction func resetGame(sender: AnyObject, forEvent event: UIEvent) {
        counter = 0
        counterTwo = 0
        listofColors = RandomList()
        initialScore = 0
        ScoreCounter.text = ""
        computerTurn()
        
        
    }
    
    @IBAction func GreenButtonController(sender: AnyObject, forEvent event: UIEvent) {
        updateTurn(0)
    }
    
    @IBAction func RedButtonController(sender: AnyObject, forEvent event: UIEvent) {
        updateTurn(1)
    }
    
    @IBAction func YellowButtonController(sender: AnyObject, forEvent event: UIEvent) {
        updateTurn(2)
    }
    
    @IBAction func BlueButtonController(sender: AnyObject, forEvent event: UIEvent) {
        updateTurn(3)
    }
    
    func updateTurn(color: Int){
        // check to see if the player made the correct move
        if listofColors.colorChoice[counterTwo] == color {
            // made the right move
            initialScore += 1
            scoreTime = initialScore
            counterTwo += 1
        } else {
            // wrong move
            // TODO: boom, reset game, whatever...
            ScoreCounter.text = "FAIL"
        }
        
        if (counterTwo == counter){ // player is done with his turn
            computerTurn()
        }
    }
    func computerTurn(){
        //do something
        //do something awesome! :)
        
        let i = counter
        print(listofColors.colorChoice[i])
        if (listofColors.colorChoice[i]==0)
        {
            /*push the button for green*/
            nextColor.text = "Green"
        } else if (listofColors.colorChoice[i]==1)
        {
            /*push the button for red*/
            nextColor.text = "Red"
        } else if (listofColors.colorChoice[i]==2)
        {
            /*push the button for yellow*/
            nextColor.text = "Yellow"
        } else if (listofColors.colorChoice[i]==3)
        {
            /*push the button for blue*/
            nextColor.text = "Blue"
        }
        sleep(1)

        
        counter += 1
        
        counterTwo = 0
        //nextColor.text = "???"
    }
    
}


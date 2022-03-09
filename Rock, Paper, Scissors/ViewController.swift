//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Александр on 05.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var rockOut: UIButton!
    @IBOutlet weak var paperOut: UIButton!
    @IBOutlet weak var scissorsOut: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var ScoreAILabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var guessOfAI = Int()
    var literalGuessOfAI = String()
    var scoreOfWins = 0
    var scoreOfLose = 0
    
    //MARK: - viewDidLoad
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandom()
        
        
        
        scoreLabel.text = String(scoreOfWins)
        ScoreAILabel.text = String(scoreOfLose)
        messageLabel.text = ""
        
        scissorsOut.backgroundColor = UIColor(patternImage: UIImage(named: "scissors") ?? UIImage())
        rockOut.backgroundColor = UIColor(patternImage: UIImage(named: "rock") ?? UIImage())
        paperOut.backgroundColor = UIColor(patternImage: UIImage(named: "paper") ?? UIImage())
    }



    //MARK: - IBAction
    
    @IBAction func rockButton(_ sender: Any) {
        switch guessOfAI {
        case 1:
            endOfGameCheck()
            alertPresenter(result: "draw")
        case 2:
            
            alertPresenter(result: "lose")
            endOfGameCheck()
            
        case 3:
            
            alertPresenter(result: "win")
            endOfGameCheck()
        default:
            return
        }

    }
    
    @IBAction func paperButton(_ sender: Any) {
        switch guessOfAI {
        case 1:
            
            alertPresenter(result: "win")
            endOfGameCheck()
        case 2:
            
            alertPresenter(result: "draw")
            endOfGameCheck()
            
        case 3:
            
            alertPresenter(result: "lose")
            endOfGameCheck()
        default:
            return
        }

    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        switch guessOfAI {
        case 1:
            
            alertPresenter(result: "lose")
            endOfGameCheck()
        case 2:
            
            alertPresenter(result: "win")
            endOfGameCheck()
            
        case 3:
            
            alertPresenter(result: "draw")
            endOfGameCheck()
        default:
            return
        }

    }
}


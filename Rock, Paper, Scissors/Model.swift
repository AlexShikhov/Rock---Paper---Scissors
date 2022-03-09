//
//  Model.swift
//  Rock, Paper, Scissors
//
//  Created by Александр on 09.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

extension ViewController {
    
    func endOfGameCheck() {
        if scoreOfLose < 3 && scoreOfWins < 3 {
            mainLabel.text = "🤔"
            messageLabel.text = ""
            
        } else if scoreOfWins == 3 {
            
            mainLabel.text = "🥳"
            messageLabel.text = "U WIN! GJ!"
            scoreOfWins = 0
            scoreLabel.text = String(scoreOfWins)
            scoreOfLose = 0
            ScoreAILabel.text = String(scoreOfLose)
            
        } else if scoreOfLose == 3 {
            mainLabel.text = "🥺"
            messageLabel.text = "SORRY( U LOSE, TRY AGAIN"
            scoreOfWins = 0
            scoreLabel.text = String(scoreOfWins)
            scoreOfLose = 0
            ScoreAILabel.text = String(scoreOfLose)
        }
    }
    
    func getRandom() {
        guessOfAI = Int.random(in: 1...3)
        switch guessOfAI {
        case 1:
            literalGuessOfAI = "Rock"
        case 2:
            literalGuessOfAI = "Paper"
        default:
            literalGuessOfAI = "Scissors"
        }
    }
    
    func alertPresenter (result: String) {
        switch result {
        case "lose":
            scoreOfLose += 1
            ScoreAILabel.text = String(scoreOfLose)
            let alertController = UIAlertController(title: "You lose", message: "Try again brof. Computer chooce - \(literalGuessOfAI)", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alerAction)
            present(alertController, animated: true)
            
            getRandom()
        
        case "win":
            
            scoreOfWins += 1
            scoreLabel.text = String(scoreOfWins)
            let alertController = UIAlertController(title: "You win", message: "Good job! Computer chooce - \(literalGuessOfAI)", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alerAction)
            present(alertController, animated: true)
            
            getRandom()
        
        case "draw":
            let alertController = UIAlertController(title: "Its a draw!", message: "Computer chooce - \(literalGuessOfAI)", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alerAction)
            present(alertController, animated: true)
            
            getRandom()
            
        default:
            return
        }
        
    }
}

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
    
//MARK: - Model
    var guessOfAI = Int()
    var score = 0
    func getRandom() {
        guessOfAI = Int.random(in: 1...3)
    }
    
    func alertPresenter (result: String) {
        switch result {
        case "lose":
            let alertController = UIAlertController(title: "You lose", message: "Try again brof", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alerAction)
            present(alertController, animated: true)
        
        case "win":
            
            score += 1
            scoreLabel.text = String(score)
            let alertController = UIAlertController(title: "You win", message: "Good job!", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alerAction)
            present(alertController, animated: true)
        
        case "draw":
            let alertController = UIAlertController(title: "Its a draw!", message: "The computer make same choice", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alerAction)
            present(alertController, animated: true)
            
        default:
            return
        }
        
    }
    
    //MARK: - viewDidLoad
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandom()
        scoreLabel.text = String(score)
//        rockOut.backgroundColor = UIColor(patternImage: UIImage(named: "rainbow") ?? UIImage())
        
        
    }

    

    //MARK: - IBAction
    
    @IBAction func rockButton(_ sender: Any) {
        switch guessOfAI {
        case 1:
            getRandom()
            alertPresenter(result: "draw")
        case 2:
            getRandom()
            alertPresenter(result: "lose")
            
        case 3:
            getRandom()
            alertPresenter(result: "win")
        default:
            return
        }

    }
    
    @IBAction func paperButton(_ sender: Any) {
        switch guessOfAI {
        case 1:
            getRandom()
            alertPresenter(result: "win")
        case 2:
            getRandom()
            alertPresenter(result: "draw")
            
        case 3:
            getRandom()
            alertPresenter(result: "lose")
        default:
            return
        }

    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        switch guessOfAI {
        case 1:
            getRandom()
            alertPresenter(result: "lose")
        case 2:
            getRandom()
            alertPresenter(result: "win")
            
        case 3:
            getRandom()
            alertPresenter(result: "draw")
        default:
            return
        }

    }
}


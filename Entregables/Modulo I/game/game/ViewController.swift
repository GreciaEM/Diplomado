//
//  ViewController.swift
//  game
//
//  Created by Grecia Escárcega on 16/08/18.
//  Copyright © 2018 gEM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var youLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    @IBOutlet weak var playerChoice: UIImageView!
    @IBOutlet weak var cpuChoice: UIImageView!
    @IBOutlet weak var loserImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var cpu: String = ""
    var user: String = ""
    var result: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialScreen()
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        initialScreen()
        startButton.isHidden = false
    }
    
    @IBAction func start(_ sender: UIButton) {
        startButton.isHidden = true
        image.isHidden = false
        scissorsButton.isHidden = false
        rockButton.isHidden = false
        paperButton.isHidden = false
        
    }
    
    @IBAction func playRock(_ sender: UIButton) {
        
        cpu = selectSign()
        user = "rock"
        winLose(cpu, user)
        
        image.isHidden = true
        scissorsButton.isHidden = true
        rockButton.isHidden = true
        paperButton.isHidden = true
        youLabel.isHidden = false
        cpuLabel.isHidden = false
        playerChoice.isHidden = false
        playerChoice.image = UIImage(named: "rock")
        cpuChoice.isHidden = false
        playAgainButton.isHidden = false
        resultLabel.isHidden = false
    }
    
    @IBAction func playPaper(_ sender: UIButton) {
        
        cpu = selectSign()
        user = "paper"
        winLose(cpu, user)
        
        image.isHidden = true
        scissorsButton.isHidden = true
        rockButton.isHidden = true
        paperButton.isHidden = true
        youLabel.isHidden = false
        cpuLabel.isHidden = false
        playerChoice.isHidden = false
        playerChoice.image = UIImage(named: "paper-1")
        cpuChoice.isHidden = false
        playAgainButton.isHidden = false
        resultLabel.isHidden = false
        
    }
    
    @IBAction func playScissors(_ sender: UIButton) {
        cpu = selectSign()
        user = "scissors"
        winLose(cpu, user)
        
        image.isHidden = true
        scissorsButton.isHidden = true
        rockButton.isHidden = true
        paperButton.isHidden = true
        youLabel.isHidden = false
        cpuLabel.isHidden = false
        playerChoice.isHidden = false
        playerChoice.image = UIImage(named: "scissors")
        cpuChoice.isHidden = false
        playAgainButton.isHidden = false
        resultLabel.isHidden = false
    }
    
    func initialScreen () {
        resultLabel.isHidden = true //inicia con todo oculto
        loserImage.isHidden = true
        playAgainButton.isHidden = true
        image.isHidden = true
        youLabel.isHidden = true
        cpuLabel.isHidden = true
        playerChoice.isHidden = true
        cpuChoice.isHidden = true
        scissorsButton.isHidden = true
        paperButton.isHidden = true
        rockButton.isHidden = true
    }
    
    func selectSign() -> String {
        var selection = arc4random_uniform(3) + 1
        if (selection == 1){
            cpuChoice.image = UIImage(named: "paper-1")
            cpuChoice.isHidden = false
            return "paper"
        }
        else if (selection == 2) {
            cpuChoice.image = UIImage(named: "rock")
            cpuChoice.isHidden = false
            return "rock"
        }
        else {
            cpuChoice.image = UIImage(named: "scissors")
            cpuChoice.isHidden = false
            return "scissors"
        }
        
    }
    
    func winLose(_ cpu: String , _ user: String) {
        if cpu == "rock"{
            if user == "rock"{
                resultLabel.text = "Draw"
            }
            else if user == "scissors"{
                loserImage.isHidden = false
                resultLabel.text = "Lose"
            } else {
                resultLabel.text = "Win"
            }
        }
        else if cpu == "paper"{
            if user == "paper"{
                resultLabel.text = "Draw"
            }
            else if user == "rock"{
                loserImage.isHidden = false
                resultLabel.text = "Lose"
            } else {
                resultLabel.text = "Win"
            }
        }
        else if cpu == "scissors"{
            if user == "scissors"{
                resultLabel.text = "Draw"
            }
            else if user == "paper"{
                loserImage.isHidden = false
                resultLabel.text = "Lose"
            } else {
                resultLabel.text = "Win"
            }
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


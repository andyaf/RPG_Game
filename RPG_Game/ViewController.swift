//
//  ViewController.swift
//  RPG_Game
//
//  Created by Andrew2 on 2/2/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var playerHPText: UILabel!
    
    

    @IBOutlet weak var enemyHPText: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    @IBAction func attackButton(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPwr)"
            enemyHPText.text = "\(enemy.hp) HP"
        } else {
            printLabel.text = "Attack was unsucessful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
            
        }
        
        if !enemy.isAlive {
            enemyHPText.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats:  false)
        
        
        
    }
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    //var player is of type Player Class
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(name: "Andy", hp: 100, attackPwr: 20)
        
        generateRandomEnemy()
        
        playerHPText.text = "\(player.hp) HP"
        
      
    }
    
    func generateRandomEnemy () {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0  {
            
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        
        enemyImage.hidden = false
    }
    


}


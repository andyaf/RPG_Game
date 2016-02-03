//
//  Enemy.swift
//  RPG_Game
//
//  Created by Andrew2 on 2/3/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Enemy : Character {
    
    var loot : [String] {
        return ["Rusty Dagger", "Cracked Butler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            //random number between 0 and length of an array
            return loot[rand]
        
        }
        return nil
        
    }
    
}
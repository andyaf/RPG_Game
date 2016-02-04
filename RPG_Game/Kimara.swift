//
//  Kimara.swift
//  RPG_Game
//
//  Created by Andrew2 on 2/3/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return["Tough Hide", "Kimara Vennom", "Rare Trident"]
    }
    //an example of polymorphism
    
    override var type :String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
}
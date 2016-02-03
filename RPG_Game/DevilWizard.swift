//
//  DevilWizard.swift
//  RPG_Game
//
//  Created by Andrew2 on 2/3/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot : [String] {
        return ["Magic Wand", "Dark Amulet","Salted Pork"]
    }
    
    override var type : String {
        return "Devil Wizard"
    }
}
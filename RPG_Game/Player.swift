//
//  Player.swift
//  RPG_Game
//
//  Created by Andrew2 on 2/3/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory : [String] {
        return _inventory
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name:String, hp:Int, attackPwr: Int) {
        //initiates this class and also calls the other initializer
        self.init(startingHp: hp, attackPwr: attackPwr)
        //initiates the base class (Character)
        _name = name
    }
    
}
//
//  Character.swift
//  RPG_Game
//
//  Created by Andrew2 on 2/2/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Character {
    private var _hp : Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var hp : Int {
        get {
            return hp
        }
    }
    
    init (startingHp: Int, attackPwr: Int){
    self._hp = startingHp
    self._attackPwr = attackPwr
    }
}
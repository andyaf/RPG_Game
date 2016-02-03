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
    
    //you can return it, but not modify it
    
    var hp : Int {
        get {
            return _hp
        }
    }
    
    var isAlive :Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
        
    }
    
    init (startingHp: Int, attackPwr: Int){
    self._hp = startingHp
    self._attackPwr = attackPwr
        //Can be changed only if you pass it via the initializer
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}
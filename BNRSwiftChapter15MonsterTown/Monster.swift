//
//  Monster.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/27/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import Foundation

class Monster {
    // classes can have static properties at the type level
    // static properties can't be overridden by a subclass
    static let isTerrifying = true
    // class type properties can be overriden by subclasses...just need to make sure override is in Zombie definition of spookyNoise
    class var spookyNoise: String {
        return "Grrrr"
    }
    
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get{
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing the town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
    
}

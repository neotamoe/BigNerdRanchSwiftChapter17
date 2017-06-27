//
//  Monster.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/26/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import Foundation

// CLASSES
// syntax to define a new class is the same as a new struct

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing the town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
    
}

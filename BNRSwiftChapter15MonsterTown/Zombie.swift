//
//  Zombie.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/27/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import Foundation

class Zombie: Monster {
    // this is a type method
//    class func makeSpookyNoise() -> String {
//        return "Brains..."
//    }
    
    // computed type property
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true

    // access control
    private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart {
            if (town?.population)! > 9 {
                town?.changePopulation(by: -10)
            } else {
                town?.population = 0
            }
        super.terrorizeTown()
        }
    }
}

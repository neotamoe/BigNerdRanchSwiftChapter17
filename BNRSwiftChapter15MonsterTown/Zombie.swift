//
//  Zombie.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/26/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import Foundation

// INHERITANCE
// inheritance is a relationship in which one class (subclass) is defined in terms of another (a superclass)
// subclass inherits the properties and methods of the superclass

// overriding a method means that a subclass provides its own definition of a method that is defined on its superclass
// without the word "override" you'll get a compiler error

// prevent overriding
// adding the word "final" allows you to prevent any subclasses of Zombie to override the terrorizeTown function

class Zombie: Monster {
    var walksWithLimp = true
    final override func terrorizeTown() {
        if town != nil {
            if (town?.population)! > 9 {
                town?.changePopulation(by: -10)
            } else {
                town?.population = 0
            }
        super.terrorizeTown()
        }
    }
}

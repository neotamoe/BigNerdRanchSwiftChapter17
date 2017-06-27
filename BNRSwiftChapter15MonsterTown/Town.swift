//
//  Town.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/26/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//
// name your struct using properties (either let or var)

import Foundation

struct Town {
    var population = 5_422
    var numberOfStoplights = 4

    func printDescription() {
        print("Population: \(population); numberOfStoplights: \(numberOfStoplights)")
    }
    
    // mutating methods
    // if an instance method on a struct changes any of the struct's properties, it must be marked as mutating
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}


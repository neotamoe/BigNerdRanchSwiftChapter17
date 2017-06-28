//
//  Town.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/27/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

// PROPERTIES
// properties can be either 1) stored or 2) computed
// properties model the characteristics of the entity that a type represents by associating values with the type.
// property values can either be var or let 
// classes, structures and enumerations all can have properties



import Foundation

struct Town {
    // let makes every Town in the South region.
    // type properties are universal to the type.  the value is shared across all the type's instances
    // type property works better for the region property because the region South is universal to the type
    static let region = "South"
    // property observers:
    // watch for and respond to changes in a given property
    // property observation is available to any stored property you defined and any proeprty you inherit.
    // can't use property observation with computed properties you define...
    var population = 5_422 {
        didSet(oldPopulation) {
            if population  < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation)")
            }
        }
    }
    var numberOfStoplights = 4
    
    // enums are frequently nested
    enum Size {
        case small
        case medium
        case large
    }
    
    // lazy property/lazy loading means that the value of a property is not calculated until the first time it is needed
    // self is needed to gain access to the instance's population property within the closure
    // properties marked with lazy are only calculated one time...so after it is run, changing the population will never cause townSize to be recalculated
//    lazy var townSize: Size = {
//        switch self.population {
//        case 0...10_000:
//            return Size.small
//        case 10_001...100_000:
//            return Size.medium
//        default:
//            return Size.large
//        }
//    }()

    // computed properties use a getter and optional setter
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    func printDescription() {
        print("Population: \(population); numberOfStoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}

// BRONZE CHALLENGE
// only log changes to the town's population if the new population is less than the old value



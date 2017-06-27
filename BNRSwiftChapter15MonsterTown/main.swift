//
//  main.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/26/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//
// this file typically contains top level code (code that is not contained in the implementation of any function or defined on a specific type)
// code execution is order dependent (top to bottom)
// struct (or structure) is a type that groups a set of related chunks of data together in memory
// see Town.swift for Town struct

import Foundation

// now in the main file you can create an instance of Town
var myTown = Town()
//print("Population: \(myTown.population), numberOfStoplights: \(myTown.numberOfStoplights)")

// in Town.swift there is now a printDescription method, so you can use this instead...
myTown.printDescription()

// now in Town.swift there is a mutating method to increase population
myTown.changePopulation(by: 500)
myTown.printDescription()

// now in Monster.swift there is a Monster class

//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()

// because the town property has an optional type "Town?" you have to unwrap it before you can call printDescription() on it.  This makes sure fredTheZombie has a town before you try to printDescription()
fredTheZombie.town?.printDescription()

// BRONZE CHALLENGE
// currently if a zombie terrorizes a town with a population of 0, the population goes to -10.  Fix so population can't go less than 0.  also make sure population = 0 if amount to decrement is more than current population.
// see changes made to Zombie.swift file

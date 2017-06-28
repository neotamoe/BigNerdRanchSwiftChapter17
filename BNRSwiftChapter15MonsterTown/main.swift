//
//  main.swift
//  BNRSwiftChapter15MonsterTown
//
//  Created by Neota Moe on 6/27/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//


import Foundation

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)

// these lines demo that the lazy property nature is only calculated once
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")

print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}

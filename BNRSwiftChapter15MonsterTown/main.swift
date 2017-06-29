
// INITIALIZERS

import Foundation

// here we are replacing the empty initializer with a default memberwise initializer.
// even though population and numberOfStoplights is already defined in Town.swift, these values replace the default values
//var myTown = Town(region: "West", population: 10_000, stoplights: 6)
//myTown.printDescription()

var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()

let myTownSize = myTown?.townSize
print(myTownSize)

myTown?.changePopulation(by: 1_000_000)
print("Size: \(myTown?.townSize); population: \(myTown?.population)")

// classes do not typically inherit their superclass's initializers
// there are cases where they do: 1) if the subclass does not define any designated initializers, it will inherit its superclass designated initializers, 2) if the subclass implements all of the superclass's designated initializers (either explicitly or via inheritance) it will inherit all of its superclass's convenicence initializers
// zombie is inheriting monster type's sole designated initializer b/c it provides default values for all new properties it adds and it does not define its own designated initializer
// this next line gives a compiler error
//let fredTheZombie = Zombie()
var fredTheZombie: Zombie? = Zombie (limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie = nil

print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}

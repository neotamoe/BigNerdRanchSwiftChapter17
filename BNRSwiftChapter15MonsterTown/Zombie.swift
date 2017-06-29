
import Foundation

class Zombie: Monster {

    override class var spookyNoise: String {
        return "Brains..."
    }
    
//    var walksWithLimp = true
    var walksWithLimp: Bool
    
//    private(set) var isFallingApart = false
    private(set) var isFallingApart: Bool
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }

    // deinitialization is process of removing instances of a class from memory when no longer needed.  limited to reference types and NOT value types.  class can only have one deinitializer and takes no arguments.
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
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

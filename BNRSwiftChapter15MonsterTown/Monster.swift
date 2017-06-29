// CLASS INITIALIZATION
// classes add concept of designated and convenience initializers
// initializer on a class is either designated or convenience (not both)
// there isn't a free memberwise initializer for class


import Foundation

class Monster {
    static let isTerrifying = true

    class var spookyNoise: String {
        return "Grrrr"
    }
    
    var town: Town?
    var name: String
    var victimPool: Int {
        get{
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    // this is a designated initializer; if class has a superclass its designated initializer also must call its superclass's designated initializer
    // designated initializers are unadorned (no extra words like a convenience initializer)
    // adding required in front of init requires its subclasses to provide a specific initializer
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing the town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
    
}

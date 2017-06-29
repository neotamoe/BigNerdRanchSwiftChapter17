

import Foundation

struct Town {
    let region: String
    var population: Int  {
        didSet(oldPopulation) {
            if population  < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation)")
            }
        }
    }
    var numberOfStoplights: Int
    // this is a custom memberwise initializer
    // adding ? to init makes it a failable initializer; returns an optional instance of the type
    init?(region: String, population: Int, stoplights: Int){
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    //this is initializer delegation.  it is calling the other initializer in the code block
    init?(population: Int, stoplights: Int){
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
    enum Size {
        case small
        case medium
        case large
    }
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
        print("Population: \(population); numberOfStoplights: \(numberOfStoplights); region: \(region)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}

//
//  Farm.swift
//  PolymorphismDemo
//
//  Created by Cormell, David - DPC on 24/11/2023.
//

import Foundation

struct Farm {
    func feed(_ animal: Cow) {
        let pieceOfHay = Hay.harvest()
        animal.eat(pieceOfHay)
    }
    
    func feed(_ animal: Donkey) {
        let aCarrot = Carrot.harvest()
        animal.eat(aCarrot)
    }
    
    func feed(_ animal: Chicken) {
        let cobOfCorn = Corn.harvest()
        animal.eat(cobOfCorn)
    }
}

struct Cow {
    func eat(_ food: Hay) {
        print("I'm munching on \(food.display)")
    }
}

struct Donkey {
    func eat(_ food: Carrot) {
        print("I'm nibbling on a \(food.display)")
    }
}

struct Chicken {
    func eat(_ food: Corn) {
        print("I'm pecking at \(food.display)")
    }
}

struct Hay {
    let display = "🌾"
    
    static func harvest() -> Hay {
        return Hay()
    }
}

struct Carrot {
    let display = "🥕"
    
    static func harvest() -> Carrot {
        return Carrot()
    }
}

struct Corn {
    let display = "🌽"
    
    static func harvest() -> Corn {
        return Corn()
    }
}

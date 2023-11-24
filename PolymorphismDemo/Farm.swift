//
//  Farm.swift
//  PolymorphismDemo
//
//  Created by Cormell, David - DPC on 24/11/2023.
//

import Foundation

struct Farm {
    func feed(_ animal: Animal) {
        if animal is Cow {
            animal.eat(Hay())
        } else if animal is Donkey {
            animal.eat(Carrot())
        } else {
            animal.eat(Corn())
        }
    }
}

class Animal {
    //had to make the type of parameter 'food' Any because each Animal could eat different types of food
    func eat(_ food: Any) {
        fatalError("Not implemented abstract method in a subclass")
    }
}

class Cow: Animal {
    override func eat(_ food: Any) {
        guard let food = food as? Hay else { fatalError("Cow cannot eat \(food)")}
        print("I'm munching on \(food.display)")
    }
}

class Donkey: Animal {
    override func eat(_ food: Any) {
        guard let food = food as? Carrot else { fatalError("Donkey cannot eat \(food)")}
        print("I'm nibbling on a \(food.display)")
    }
}

class Chicken: Animal {
    override func eat(_ food: Any) {
        guard let food = food as? Corn else { fatalError("Chicken cannot eat \(food)")}
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

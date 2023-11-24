//
//  Farm.swift
//  PolymorphismDemo
//
//  Created by Cormell, David - DPC on 24/11/2023.
//

import Foundation

struct Farm {
    //opaque type (underlying type is substituted in at runtime)
    //caller determines the underlining type
    //fixed for the scope of the parameter (each call can have a different underlying type)
    func feed(_ animal: some Animal) {
        let food = type(of: animal).Feed.harvest()
        animal.eat(food)
    }
    
    //the array will accept any combination of types that conform to the Animal protocol
    func feedAll(_ animals: [any Animal]) {
        for animal in animals {
            feed(animal)
        }
    }
}

//abstract concept
protocol Animal {
    associatedtype Feed: AnimalFeed
    func eat(_ food: Feed)
}

//concrete type
struct Cow: Animal {
    func eat(_ food: Hay) {
        print("I'm munching on \(food.display)")
    }
}

//concrete type
struct Donkey: Animal {
    func eat(_ food: Carrot) {
        print("I'm nibbling on a \(food.display)")
    }
}

//concrete type
struct Chicken: Animal {
    func eat(_ food: Corn) {
        print("I'm pecking at \(food.display)")
    }
}

//abstract concept
protocol AnimalFeed {
    var display: String { get }
    associatedtype Feed: AnimalFeed where Feed == Self //Self is the type that conforms to the protocol AnimalFeed
    static func harvest() -> Feed
}

//concrete type of animal feed
struct Hay: AnimalFeed {
    let display = "🌾"
    
    static func harvest() -> Hay {
        return Hay()
    }
}

//concrete type of animal feed
struct Carrot: AnimalFeed {
    let display = "🥕"
    
    static func harvest() -> Carrot {
        return Carrot()
    }
}

//concrete type of animal feed
struct Corn: AnimalFeed {
    let display = "🌽"
    
    static func harvest() -> Corn {
        return Corn()
    }
}

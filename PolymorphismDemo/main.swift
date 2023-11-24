//
//  main.swift
//  PolymorphismDemo
//
//  Created by Cormell, David - DPC on 23/11/2023.
//

import Foundation

let myFarm = Farm()

//feed all the animals on the farm through a common interface (the 'feed' method)
//This is an example of compile-time polymorphism (through protocol oriented programming using generic type parameters)
//It is polymorphic because 'feed' (the common method) will behave differently depending on the concrete type of animal being fed.
//The upside of this type of polymorphism is that we can reduce our duplication of the 'feed' method - to only one that takes any type that follows the 'Animal' protocol and all of the type checking is happening at compile time.
//The downside is that this requires learning and using some very expressive and beautiful (but tricky) Swift concepts!
myFarm.feed(Cow())
myFarm.feed(Donkey())
myFarm.feed(Chicken())

let farmAnimals: [any Animal] = [Chicken(),Chicken(),Chicken(),Cow(),Donkey(),Donkey()]

myFarm.feedAll(farmAnimals)


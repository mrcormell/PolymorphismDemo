//
//  main.swift
//  PolymorphismDemo
//
//  Created by Cormell, David - DPC on 23/11/2023.
//

import Foundation

let myFarm = Farm()

//feed all the animals on the farm through a common interface (the 'feed' method)
//This is an example of dynamic (runtime) polymorphism (through subtypes and inheritance)
//It is polymorphic because 'feed' (the common method) will behave differently depending on the concrete type of animal being fed.
//The upside of this type of polymorphism is that we can reduce our duplication of the 'feed' method - to only one that takes a parameter of type 'Animal' (rather than one method per subtype of Animal)
//The downside is that we have to introduce code to check the type of our objects at runtime (and errors could be thrown at runtime if an abstract super class like 'Animal' doesn't have all it's methods overriden by subclasses)

let myAnimals: [Animal] = [Cow(), Cow(), Donkey(), Donkey(), Chicken(), Chicken()]

for animal in myAnimals {
    myFarm.feed(animal)
}


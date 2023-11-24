//
//  main.swift
//  PolymorphismDemo
//
//  Created by Cormell, David - DPC on 23/11/2023.
//

import Foundation

let myFarm = Farm()

//feed all the animals on the farm through a common interface (the 'feed' method)
//This is an example of static or compile-time polymorphism (through overloading)
//It is polymorphic because 'feed' (the common method) will behave differently depending on the concrete type of animal being fed.
//The upside of this type of polymorphism is that the compiler (e.g. before runtime) it is known which behaviour of 'feed' will be used. So we can catch likely bugs sooner
//The downside is repeated code (we have 3 very similar feed methods, one for each of animal types on our farm
myFarm.feed(Cow())
myFarm.feed(Donkey())
myFarm.feed(Chicken())



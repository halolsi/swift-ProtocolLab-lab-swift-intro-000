//
//  Ships.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


enum Direction {
    case north, south, east, west
}

protocol SteerAbility {
    var direction : Direction {get set} //needed to add set
    
    mutating func steerInDirection(_ direction : Direction)
}

extension SteerAbility{
    mutating func steerInDirection(_ direction: Direction){
        self.direction = direction
    }
}

class SailBoat : SteerAbility {

    var direction : Direction = .north
    func steerInDirection(direction: Direction){
    
    }
}

class RowBoat : SteerAbility {
    
    var direction : Direction = .north
    func steerInDirection(direction: Direction){
        
    }
}

class SteamBoat : SteerAbility {
    
    var direction : Direction = .north
    func steerInDirection(direction: Direction){
        
    }
}

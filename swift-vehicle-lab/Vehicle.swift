//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Max Tkach on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed = 0.0
    var heading = 0.0
    
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }

    func halt() {
        speed = 0
    }
    
    func accelerate() {
        speed += maxSpeed / 10
        if speed > maxSpeed { speed = maxSpeed }
    }
    
    func decelerate() {
        speed -= maxSpeed / 10
        if speed < 0 { speed = 0 }
    }
    
    func turnRight() {
        if speed > 0 {
            speed /= 2
            heading += 90
            if heading >= 360 { heading -= 360 }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed /= 2
            heading -= 90
            if heading < 0 { heading += 360 }
        }
    }
    
    
}
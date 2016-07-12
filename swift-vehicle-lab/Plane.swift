//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Max Tkach on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude = 0.0
    var inFlight: Bool {
        if speed > 0 && altitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if !inFlight {
            speed = maxSpeed / 10
            altitude = maxAltitude / 10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            altitude += maxAltitude / 10
            if altitude > maxAltitude { altitude = maxAltitude }
            decelerate()
        }
    }
    
    func dive() {
        if altitude > 0 {
            altitude -= maxAltitude / 10
            if altitude < 0 { altitude = 0 }
            accelerate()
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            if heading > 360 { heading -= 360 }
            speed *= 0.9
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            if heading < 0 { heading += 360 }
            speed *= 0.9
        }
    }
    
    
}
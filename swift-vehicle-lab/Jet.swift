//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Max Tkach on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Jet: Plane {
    
    override func climb() {
        if inFlight {
            altitude += maxAltitude / 5
            if altitude > maxAltitude { altitude = maxAltitude }
            decelerate()
        }
    }
    
    override func dive() {
        if altitude > 0 {
            altitude -= maxAltitude / 5
            if altitude < 0 { altitude = 0 }
            accelerate()
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
    
    
    
}

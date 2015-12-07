//
//  Lerp.swift
//  Lerp
//
//  Created by Daniel Clelland on 6/12/15.
//  Copyright © 2015 Daniel Clelland. All rights reserved.
//

import Foundation

// MARK: Constants

public let π: Double = M_PI

// MARK: Postfix operators

postfix operator ° {}

public postfix func °<T: Degradable> (angle: T) -> T {
    return deg2rad(angle)
}

// MARK: Degradable protocol

public protocol Degradable {
    var degrees: Self { get }
    var radians: Self { get }
}

// MARK: Degradable global functions

/**
Converts degrees to radians.

- parameter angle: The input angle, assumed to be in degrees.

- returns: The angle's value in radians.
*/

public func deg2rad<T: Degradable>(angle: T) -> T {
    return angle.degrees
}

/**
Converts radians to degrees.

- parameter angle: The input angle, assumed to be in radians.

- returns: The angle's value in degrees.
*/

public func rad2deg<T: Degradable>(angle: T) -> T {
    return angle.radians
}

// MARK: Degradable implementations

extension Double: Degradable {
  
    /// Self (in degrees) value in radians
    public var degrees: Double {
        return self * π / 180.0
    }
    
    /// Self (in radians) value in degrees
    public var radians: Double {
        return self * 180.0 / π
    }
    
}

extension Float: Degradable {
  
    /// Self (in degrees) value in radians
    public var degrees: Float {
        return self * Float(π) / 180.0
    }
    
    /// Self (in radians) value in degrees
    public var radians: Float {
        return self * 180.0 / Float(π)
    }
    
}

extension CGFloat: Degradable {
  
    /// Self (in degrees) value in radians
    public var degrees: CGFloat {
        return self * CGFloat(π) / 180.0
    }
    
    /// Self (in radians) value in degrees
    public var radians: CGFloat {
        return self * 180.0 / CGFloat(π)
    }
    
}

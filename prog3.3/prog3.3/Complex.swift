//
//  Complex.swift
//  prog3.3
//
//  Created by Daniela Lemow on 23/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

/**
 Represents a complex number
 
 */
class Complex : CustomStringConvertible {
    
    // STORED PROPERTIES
    
    var real: Float;   // Real part of the number
    var imag: Float;   // Imaginary part of the number
    
    // COMPUTED PROPERTIES
    
    /**
     - returns: Float Magnitude of the complex number
     */
    var magnitude: Float {
        return (real * real) + (imag * imag)
    }
    
    /**
     - returns: String String representation of a complex number
     */
    var description: String {
        var complex : String
        complex = "\(real)"
        if imag >= 0 {
            complex += "+\(imag)i"
        } else {
            complex += "\(imag)i"
        }
        return complex
    }
    
    // INITIALISERS
    
    
    /**
     Designated initialiser
     
     Real and imaginary parts are passed in the arguments of the initialiser.
     
     - parameter real Real part of the numerator
     - parameter imag Imaginary part of the number
     */
    init(real : Float, imag : Float) {
        self.real = real
        self.imag = imag
    }
    
    /**
     Default initialiser
     
     Sets complex number to 0
     */
    convenience init() {
        self.init(real: 0, imag: 0)
    }
    
    // METHODS
    
    /**
     Adds two complex numbers.
     
     - parameter c1: Complex number to add to
     - parameter c2: Complex number to be added
     
     - returns: The result of c1 + c2.
     */
    static func add(c1: Complex, to c2: Complex) -> Complex {
        return Complex(real: c1.real + c2.real, imag: c1.imag + c2.imag)
    }
    
    /**
     Subtract a complex number from a complex number.
     
     - parameter c1: Complex number to subtract
     - parameter c2: Complex number to subtract from
     
     - returns: The result of c2 - c1.
     */
    static func subtract(c1: Complex, from c2: Complex) -> Complex {
        return Complex(real: c1.real - c2.real, imag: c1.imag - c2.imag)
    }
    
    /**
     Multiply a complex number by a complex number.
     
     - parameter c1: Complex number to multiply
     - parameter c2: Complex number to multiply by
     
     - returns: The result of c1*c2.
     */
    static func multiply(c1: Complex, by c2: Complex) -> Complex {
        return Complex(real: (c1.real * c2.real) - (c1.imag * c2.imag), imag : (c1.real * c2.imag) + (c1.imag * c2.real))
    }
    
    /**
     Divide a complex number by a complex number.
     
     - parameter c1: Complex number to divide
     - parameter c2: Complex number to divide by
     
     - returns: The result of c1/c2.
     */
    static func divide(c1: Complex, by c2: Complex) -> Complex {
        let real = (c1.real * c2.real + c1.imag * c2.imag) / c2.magnitude
        let imag = (c1.imag * c2.real - c1.real * c2.imag) / c2.magnitude
        return Complex(real: real, imag: imag)
    }
    
    /**
     Makes a copy of the complex number.
     
     - returns: A new instance of Complex which has the same
       state as the original number.
    */
    func copy() -> Complex {
        return Complex(real: self.real, imag: self.imag)
    }
    
    /**
     + operator between two Complex numbers
     */
    static func +(c1: Complex, c2: Complex) -> Complex {
        return add(c1: c1, to: c2)
    }
    
    /**
     - operator between two Complex numbers
     */
    static func -(c1: Complex, c2: Complex) -> Complex {
        return subtract(c1: c1, from: c2)
    }
    
    /**
     * operator between two Complex numbers
     */
    static func *(c1: Complex, c2: Complex) -> Complex {
        return multiply(c1: c1, by: c2)
    }
    
    /**
     / operator between two Complex numbers
     */
    static func /(c1: Complex, c2: Complex) -> Complex {
        return divide(c1: c1, by: c2)
    }
    
    /**
     + operator between a Complex number and a Float
     */
    static func +(c: Complex, x: Float) -> Complex {
        let c2 = Complex(real: x, imag: 0.0)
        return add(c1: c, to: c2)
    }
    
    /**
     - operator between a Complex number and a Float
     */
    static func -(c: Complex, x: Float) -> Complex {
        let c2 = Complex(real: x, imag: 0.0)
        return subtract(c1: c, from: c2)
    }
    
    /**
     * operator between a Complex number and a Float
     */
    static func *(c: Complex, x: Float) -> Complex {
        let c2 = Complex(real: x, imag: 0.0)
        return multiply(c1: c, by: c2)
    }
    
    /**
     / operator between a Complex number and a Float
     */
    static func /(c: Complex, x: Float) -> Complex {
        let c2 = Complex(real: x, imag: 0.0)
        return divide(c1: c, by: c2)
    }

}

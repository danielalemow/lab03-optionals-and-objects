//
//  Fraction.swift
//  prog2.1
//
//  Created by Daniela Lemow on 18/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

/**
 * Represents a number as a fraction of two integers.
 */

class Fraction {
    
    // STORED PROPERTIES
    
    private let num: Int // Numerator
    private let den: Int // Denominator
    
    // COMPUTED PROPERTIES
    
    /**
     * Converts fraction to a float value.
     * - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den)
        }
    }
    
    /**
     * Converts object to a string description.
     * - returns: String String representation of a fraction
     */
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    // INITIALISERS
    
    /**
     * Default initialiser
     * Numerator gets set to 0 and denominator gets set to 1
     */
    
    init() {
        // Setting numerator to 0 and
        // denominator to 1 is equivalent
        // to setting the fraction to zero
        self.num = 0
        self.den = 1
    }
    
    /**
     * Designated initialiser
     * Numerator and denominator values are passed in the arguments of the initialiser.
     * - parameter num: Fraction's numerator
     * - parameter den: Fraction's denominator
     */
    
    init(num: Int, den: Int) {
        
        var num = num;
        var den = den;
        
        if (den < 0) {
            num = -num
            den = -den
        }
        
        for gcd in (1...den).reversed() {
            if (num % gcd == 0 && den % gcd == 0) {
                num /= gcd
                den /= gcd
                break
            }
        }
        
        self.num = num
        self.den = den
    }
    
    /**
     * Convenience initialiser
     * Numerator is set to some value, denominator is set to 1.
     * - parameter num: Fraction's numerator
     */
    convenience init(num : Int) {
        self.init(num: num, den: 1)
    }
    
    // METHODS
    
    /**
     * Adds a fraction to self.
     * - parameter f: Fraction to add to self.
     * - returns: Fraction The result of adding f to self.
     */
    func add(_ f: Fraction) -> Fraction {
        return Fraction(num: (self.num * f.den) + (self.den * f.num),
                        den: self.den * f.den)
    }
    
    /**
     * Subtracts fraction from self.
     * - parameter f: Fraction to subtract from self.
     * - returns: Fraction The result of subtracting f from self.
     */
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: (self.num * f.den) - (self.den * f.num),
                        den: self.den * f.den)
    }
    
    /**
     * Multiplies self by a fraction.
     * - parameter f: Fraction to multiply self by.
     * - returns: Fraction The result of multiplying self by f.
     */
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num * f.num, den: self.den * f.den)
    }
    
    /**
     * Divides self by a fraction.
     * - parameter f: Fraction to divide self by.
     * - returns: Fraction The result of dividing self by f.
     */
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num * f.den, den: self.den * f.num)
    }
    
    /**
     + operator between two Fractions
    */
    static func +(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.add(f2)
    }
    
    /**
     - operator between two Fractions
     */
    static func -(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.subtract(f2)
    }
    
    /**
     * operator between two Fractions
     */
    static func *(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     / operator between two Fractions
     */
    static func /(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
}

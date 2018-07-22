//
//  SimpleOptional.swift
//  prog3.1
//
//  Created by Daniela Lemow on 21/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

/**
 * Wrapper for value (or an object) with a boolean flag
 * that indicates whether the value is defined or not.
 */

class SimpleOptional : CustomStringConvertible {
    
    // STORED PROPERTIES
    
    let value: Any //Reference to wrapped value
    let hasValue: Bool //Flag indicating whether value has been
    
    // COMPUTED PROPERTIES
    
    /**
     * - returns: Any reference to the unwrapped value
     */
    
    var unwrap: Any {
        
        //cannot unwrap if there is no value
        assert(self.hasValue, "fatal error: cannot unwrap a NIL")
        
        return self.value
    }
    
    /*
     * - returns: String String representation of the wrapped value if not nil,
     * "nil" otherwise.
     */
    var description: String {
        if self.hasValue {
            return "SimpleOptional(\(self.value)"
        } else {
            return "nil"
        }
    }
    
    // INITIALISERS
    
    /**
     * Initialiser for undefined value.
     */
    fileprivate init() {
        self.value = "Undefined"
        self.hasValue = false
    }
    
    init(value: Any) {
        self.value = value
        self.hasValue = true
    }
    
    /**
     * Equality comparison operator between two SimpleOptionals
     *
     * Two optionals are considered the same if they both wrap
     * a value or are both nil. The wrapped values are not compared.
     * This is useful for checking whether a SimpleOptional has a
     * value or not.
     *
     * - parameter left: The operand to the left of ==
     * - parameter right: The operand to the right of ==
     *
     * - returns: Bool True if both optionals have a value or both
     * have no value, returns false otherwise.
     */
    static func == (left: SimpleOptional, right: SimpleOptional) -> Bool {
        if left.hasValue == right.hasValue {
            return true
        } else {
            return false
        }
    }
    
    /*
     * Non-equality comparison operator between two SimpleOptionals
     *
     * This operator inverts the logic of the == operator
     *
     * - parameter left: The operand to the left of !=
     * - parameter right: The operand to the right of !=
     *
     * - returns: Bool True if one of the optionals has a value and
     * the other doesn't, false otherwise.
     */
    static func != (left: SimpleOptional, right: SimpleOptional) -> Bool {
        return !(left == right)
    }
    
}

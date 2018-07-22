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
}

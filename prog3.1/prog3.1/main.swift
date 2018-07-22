//
//  main.swift
//  prog3.1
//
//  Created by Daniela Lemow on 21/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

//Declare variable x as a SimpleOptional
var x: SimpleOptional

//Assign NIL optional to x
x = NIL

//Print x
print("x=\(x)")


//Check if x has a value or not
if x == NIL {
    print("x has no value")
} else {
    //If x has a value, unwrap that value
    //and print it
    print("x has a value of \(x.unwrap)")
}

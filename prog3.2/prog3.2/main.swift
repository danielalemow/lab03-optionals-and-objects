//
//  main.swift
//  prog3.2
//
//  Created by Daniela Lemow on 23/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

//Declare variable x as an optional Int
var x : Int?

//Assign nil to x
x = nil

//Print x (The forcing avoids Xcode warning messages)
print("x=\(x as Int?)")

//Check if x has a value or not
if let xunwrapped = x {
    print("x has a value of \(xunwrapped)")
} else {
    print("x has no value")
}

//Assign a value of 3 to x
x = 3

//print x
print("x=\(x as Int?)")

//Check if x has a value or not
if let xunwrapped = x {
    print("x has a value of \(xunwrapped)")
} else {
    print("x has no value")
}

//Declare variable z as an optional Fraction
var z: Fraction?

//Assign a Fraction object 1/3 to z
z = Fraction(num: 1, den: 3)

//print z
print("z=\(z as Fraction?)")

//Check if z has a value or not
if let zunwrapped = z {
    print("z has a value of \(zunwrapped)")
    print("The decimal property of z's value is \(zunwrapped.decimal)")
} else {
    print("z has no value")
}


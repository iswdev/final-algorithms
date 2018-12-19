//
//  main.swift
//  final-algorithms
//
//  Created by User on 2018-12-17.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

let numbers = [4,3,2,7,8,2,3,1]
let result1 = findDisappearedNumbers(numbers)
print("findDisappearedNumbers \(numbers) : \(result1)")



let input1 = "abcd"
let input2 = "abcde"
if let result2 = findTheDifference(input1, input2){
    print("findTheDifference '\(input1)' '\(input2)' : \(result2)")
}



let left = 1
let right = 22
let result3 = selfDividingNumbers(left, right)
print("selfDividingNumbers \(left) \(right) : \(result3)")



let revstring = "hello"
let result4 = reverseString(revstring)
print("reverseString \(revstring) : \(result4)")



let romainNumber1 = "MCMXCIV"
let result5a = romanToInt(romainNumber1)
print("romanToInt \(romainNumber1) : \(result5a)")


let romainNumber2 = "XCIX"
let result5b = romanToInt(romainNumber2)
print("romanToInt \(romainNumber2) : \(result5b)")



var normalNumber1 = 2018
let result6a = reverseNumber(&normalNumber1)
print("reverseNumber \(normalNumber1) : \(result6a)")

var normalNumber2 = 2340506070
let result6b = reverseNumber(&normalNumber2)
print("reverseNumber \(normalNumber2) : \(result6b)")




var digits1 = 1020305068
let result7a = addDigitsNonRec(digits1)
print("addDigitsNonRec (non recursive) \(digits1) : \(result7a)")


var digits2 = 1020305068
let result7b = addDigits(digits2)
print("addDigits \(digits2) : \(result7b)")








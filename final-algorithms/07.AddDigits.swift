//
//  07.AddDigits.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * Add all digits of a number, until there is only one digit
 */
func addDigits(_ num: Int) -> Int {
    var result : Int = 0
    if(num < 10){
        return num
    }
    else{
        result = num % 10 + addDigits(num / 10);
        if (result >= 10){
            return addDigits(result)
        }else{
            return result
        }
    }
}


/*
 * Add all digits, non recursive, Using modulus 9.
 */
func addDigitsNonRec(_ num: Int) -> Int {
    if (num<=9){
        return num
    }
    return num % 9
}


//
//  07.AddDigits.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

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


func addDigitsNonRec(_ num: Int) -> Int {
    if (num<=9){
        return num
    }
    return num % 9
}

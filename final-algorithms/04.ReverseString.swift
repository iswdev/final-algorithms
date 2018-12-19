//
//  04.ReverseString.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


func reverseString(_ s: String) -> String {
    var result = ""
    for char in s{
        result = String(char) + result
    }
    return result
}

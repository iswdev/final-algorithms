//
//  04.ReverseString.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * To Reverse a string as a new string
 */
func reverseString(_ s: String) -> String {
    var result = ""
    for char in s{
        // prepend in the start of new string
        result = String(char) + result
    }
    return result
}

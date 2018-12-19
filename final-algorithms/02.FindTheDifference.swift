//
//  02.FindTheDifference.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * Finds characters in the final string not contained in the original string
 */
func findTheDifference(_ orig: String, _ final: String) -> Character? {
    for char in final{
        // chars of final string not in the original string
        if orig.index(of: char) == nil{
            return char
        }
    }
    return nil
}

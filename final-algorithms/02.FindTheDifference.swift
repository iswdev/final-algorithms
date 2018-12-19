//
//  02.FindTheDifference.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


func findTheDifference(_ s: String, _ t: String) -> Character? {
    for char in t{
        if s.index(of: char) == nil{
            return char
        }
    }
    return nil
}

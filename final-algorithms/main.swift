//
//  main.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-17.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


// 01.NumberDisappeared

let numbers = [4,3,2,7,8,2,3,1]
let result1 = findDisappearedNumbers(numbers)
print("findDisappearedNumbers \(numbers) : \(result1)")


// 02.FindTheDifference

let input1 = "abcd"
let input2 = "abcde"
if let result2 = findTheDifference(input1, input2){
    print("findTheDifference '\(input1)' '\(input2)' : \(result2)")
}


// 03.SelfDividingNumber

let left = 1
let right = 22
let result3 = selfDividingNumbers(left, right)
print("selfDividingNumbers \(left) \(right) : \(result3)")


// 04.ReverseString

let revstring = "hello"
let result4 = reverseString(revstring)
print("reverseString \(revstring) : \(result4)")


// 05.RomanToInt

let romainNumber1 = "MCMXCIV"
let result5a = romanToInt(romainNumber1)
print("romanToInt \(romainNumber1) : \(result5a)")

let romainNumber2 = "XCIX"
let result5b = romanToInt(romainNumber2)
print("romanToInt \(romainNumber2) : \(result5b)")



// 06.ReverseNumber

var normalNumber1 = 2018
let result6a = reverseNumber(&normalNumber1)
print("reverseNumber \(normalNumber1) : \(result6a)")

var normalNumber2 = 2340506070
let result6b = reverseNumber(&normalNumber2)
print("reverseNumber \(normalNumber2) : \(result6b)")


// 07.AddDigits

var digits1 = 1020305068
let result7a = addDigitsNonRec(digits1)
print("addDigitsNonRec (non recursive) \(digits1) : \(result7a)")


var digits2 = 1020305068
let result7b = addDigits(digits2)
print("addDigits \(digits2) : \(result7b)")


// 08.MoveZeroes

var numberlist1 = [4, 0, 1, 0, 3, 12, 0 , 1]
moveZeroes(&numberlist1)
print("moveZeroes \(numberlist1)")


// 09.SingleNumber

var numbers1 = [2,2,1]
let result9a = singleNumber(numbers1)
print("singleNumber \(numbers1) : \(result9a)")

var numbers2 = [4,1,2,1,2]
let result9b = singleNumber(numbers2)
print("singleNumber \(numbers2) : \(result9b)")


// 10.ReverseLinkedList

var list1 = ListNode(1)
list1.addNode(2).addNode(3).addNode(4).addNode(5)
print("reverseList \(list1) :")
var reverseList1 = reverseList(list1)
print(reverseList1!)

var list2 = ListNode(1)
list2.addNode(2).addNode(3).addNode(4).addNode(5)
print("reverseList(recursive) \(list2) :")
var reverseList2 = reverseListRec(list2)
print(reverseList2!)


// 11.DeleteDuplicates

var list3 = ListNode(1)
list3.addNode(1).addNode(2).addNode(3).addNode(3)
print("DeleteDuplicates \(list3) :")
var deletedDuplicates1 = deleteDuplicates(list3)
print(deletedDuplicates1!)

var list4 = ListNode(1)
list4.addNode(2).addNode(1).addNode(4).addNode(1).addNode(3).addNode(4)
print("DeleteDuplicates \(list4) :")
var deletedDuplicates2 = deleteDuplicates(list4)
print(deletedDuplicates2!)



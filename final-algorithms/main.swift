//
//  main.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-17.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


// 01.NumberDisappeared

let numberlist1 = [4,3,2,7,8,2,3,1]
let result1a = findDisappearedNumbers(numberlist1)
print("1. findDisappearedNumbers \(numberlist1) : \(result1a)")

let numberslist2 = [2,2,4,4,6,6,6,7,7]
let result1b = findDisappearedNumbers(numberslist2)
print("1. findDisappearedNumbers \(numberslist2) : \(result1b)")


// 02.FindTheDifference

let input1 = "abcd"
let input2 = "abcde"
if let result2a = findTheDifference(input1, input2){
    print("2. findTheDifference '\(input1)' '\(input2)' : \(result2a)")
}

let input1b = "jklmn"
let input2b = "nmpjlj"
if let result2b = findTheDifference(input1b, input2b){
    print("2. findTheDifference '\(input1b)' '\(input2b)' : \(result2b)")
}


// 03.SelfDividingNumber

let left1 = 1
let right1 = 22
let result3a = selfDividingNumbers(left1, right1)
print("3. selfDividingNumbers \(left1) \(right1) : \(result3a)")

let left2 = 22
let right2 = 100
let result3b = selfDividingNumbers(left2, right2)
print("3. selfDividingNumbers \(left2) \(right2) : \(result3b)")

// 04.ReverseString

let revstring1 = "hello"
let result4a = reverseString(revstring1)
print("4. reverseString \(revstring1) : \(result4a)")

let revstring2 = "reversedstring"
let result4b = reverseString(revstring2)
print("4. reverseString \(revstring2) : \(result4b)")


// 05.RomanToInt

let romainNumber1 = "MCMXCIV"
let result5a = romanToInt(romainNumber1)
print("5. romanToInt \(romainNumber1) : \(result5a)")

let romainNumber2 = "XCIX"
let result5b = romanToInt(romainNumber2)
print("5. romanToInt \(romainNumber2) : \(result5b)")



// 06.ReverseNumber

var normalNumber1 = 2018
let result6a = reverseNumber(&normalNumber1)
print("6. reverseNumber \(normalNumber1) : \(result6a)")

var normalNumber2 = 2340506070
let result6b = reverseNumber(&normalNumber2)
print("6. reverseNumber \(normalNumber2) : \(result6b)")


// 07.AddDigits

var digits1 = 1020305068
let result7a = addDigitsNonRec(digits1)
print("7. addDigitsNonRec (non recursive) \(digits1) : \(result7a)")


var digits2 = 1020305068
let result7b = addDigits(digits2)
print("7. addDigits \(digits2) : \(result7b)")


// 08.MoveZeroes

var listWithZeroes1 = [4, 0, 1, 0, 3, 12, 0 , 1]
moveZeroes(&listWithZeroes1)
print("8. moveZeroes \(listWithZeroes1)")

var listWithZeroes2 = [0, 0, 2, 4, 8, 12, 16, 0, 20, 22 , 0]
moveZeroes(&listWithZeroes2)
print("8. moveZeroes \(listWithZeroes2)")


// 09.SingleNumber

var numbers1 = [2,2,1]
let result9a = singleNumber(numbers1)
print("9. singleNumber \(numbers1) : \(result9a)")

var numbers2 = [4,1,2,1,2]
let result9b = singleNumber(numbers2)
print("9. singleNumber \(numbers2) : \(result9b)")


// 10.ReverseLinkedList

var list1 = ListNode(1)
list1.addNode(2).addNode(3).addNode(4).addNode(5)
print("10. reverseList \(list1) :")
var reverseList1 = reverseList(list1)
print(reverseList1!)

var list2 = ListNode(1)
list2.addNode(2).addNode(3).addNode(4).addNode(5)
print("10. reverseList(recursive) \(list2) :")
var reverseList2 = reverseListRec(list2)
print(reverseList2!)


// 11.DeleteDuplicates

var list3 = ListNode(1)
list3.addNode(1).addNode(2).addNode(3).addNode(3)
print("11. DeleteDuplicates \(list3) :")
var deletedDuplicates1 = deleteDuplicates(list3)
print(deletedDuplicates1!)

var list4 = ListNode(1)
list4.addNode(2).addNode(1).addNode(4).addNode(1).addNode(3).addNode(4)
print("11. DeleteDuplicates \(list4) :")
var deletedDuplicates2 = deleteDuplicates(list4)
print(deletedDuplicates2!)



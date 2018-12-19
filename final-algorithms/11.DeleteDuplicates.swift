//
//  11.DeleteDuplicates.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-19.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

extension ListNode {
    
    // Delete nodes matching the value, after the current node
    func deleteValue(_ value: Int, after: ListNode ){
        var current = after.next
        var prev = after
        while current != nil {
            if current?.val == value {
                // remove the current node joining the previous with the next
                prev.next = current?.next
            }
            prev = current!
            current = current?.next
        }
    }
}

/*
 * Remove all duplicates in a Linked List
 */
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var node = head
    while let current = node {
        // delete duplicates of current node value
        current.deleteValue(current.val, after: current)
        node = node?.next
    }
    return head
}

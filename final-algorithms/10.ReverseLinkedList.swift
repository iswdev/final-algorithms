//
//  10.ReverseLinkedList.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    
    /*
     * To add a number to the current node, returning the new node created
     */
    @discardableResult
    func addNode(_ val: Int) -> ListNode{
        let node=ListNode(val)
        self.next = node
        return node
    }
    
    
    /*
     * To reverse the linked list inverting the next position
     */
    func reverse() -> ListNode {
        var current = self
        var next = self.next
        // the head is now the last node
        current.next = nil
        var nextNext : ListNode?
        repeat {
            nextNext = next!.next
            // next points to the current node (previous)
            next!.next = current
            current = next!
            next = nextNext
        } while next != nil
        return current
    }
    
    /*
     * To reverse a linked list recursively
     */
    @discardableResult
    static func reverseRec(head: ListNode, curr: ListNode , prev: ListNode?) -> ListNode {
        if (curr.next == nil) {
            // last node is now the head node
            let newHead = curr
            curr.next = prev
            return newHead
        }
        // invert the direction of current -> next
        let next = curr.next
        curr.next = prev
        return reverseRec(head:head, curr: next!, prev: curr)
    }
    
}

extension ListNode : CustomStringConvertible {
    
    // Display a linked list as string [ - a > b > c > * ]
    public var description: String {
        var next = self
        var result = ""
        result += ("- \(self.val)")
        while let nextNode = next.next {
            result += (" > \(nextNode.val)")
            next = nextNode
        }
        result += (" > *")
        return result
    }
    
    
    
}


func reverseList(_ head: ListNode?) -> ListNode? {
    return head!.reverse()
}

func reverseListRec(_ head: ListNode?) -> ListNode? {
    return ListNode.reverseRec(head: head!, curr: head!, prev: nil)
}


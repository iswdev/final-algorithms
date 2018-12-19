//
//  10.ReverseLinkedList.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
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
    
    @discardableResult
    func addNode(_ val: Int) -> ListNode{
        let node=ListNode(val)
        self.next = node
        return node
    }
    
    
    
    func reverse() -> ListNode {
        var current = self
        var next = self.next
        current.next = nil
        var nextNext : ListNode?
        repeat {
            nextNext = next!.next
            next!.next = current
            current = next!
            next = nextNext
        } while next != nil
        return current
    }
    
    @discardableResult
    static func reverseRec(head: ListNode, curr: ListNode , prev: ListNode?) -> ListNode {
        if (curr.next == nil) {
            let newHead = curr
            curr.next = prev
            return newHead
        }
        let next = curr.next
        curr.next = prev
        return reverseRec(head:head, curr: next!, prev: curr)
    }
    
}

extension ListNode : CustomStringConvertible {
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


//
//  LinkedList.swift
//  LinkedListProj
//
//  Created by SEMEN TITOVSKYI on 01.04.2020.
//  Copyright © 2020 TITO. All rights reserved.
//

import Foundation

class LinkedList<T> {
    
    // MARK: - Properties
    
    var head: Node<T>?
    var last: Node<T>? {
        guard var node = head else { return nil }
        
        while let next = node.next {
            node = next
        }
        
        return node
    }
    var count: Int {
        guard var node = head else { return 0 }
        
        var count = 1
        
        while let next = node.next {
            node = next
            count += 1
        }
        
        return count
    }
    
    // MARK: - Methods

    func append(_ element: T) {
        let newNode = Node(element: element)
        
        if let lastNode = last {
          lastNode.next = newNode
        } else {
          head = newNode
        }
    }
    
    func reverseList() {
        var current = head
        var next: Node<T>?
        var prev: Node<T>?
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        head = prev
    }
    
    func getDefaultIntList() -> LinkedList<Int> {
        let linkedList = LinkedList<Int>()
        
        for i in 1..<15 {
            linkedList.append(i)
        }
        
        return linkedList
    }
}

// MARK: - Print helper

extension LinkedList: CustomStringConvertible where T == Int {
    var description: String {
        var description = """
        List \(Unmanaged.passUnretained(self).toOpaque())
        """
        
        if head != nil {
            description += " has nodes:\n"
            var node = head
        
            while node != nil {
                description += ((node?.description ?? "") + "\n")
                node = node?.next
            }
            
            return description
            
        } else {
            return description + " has no nodes."
        }
    }
}

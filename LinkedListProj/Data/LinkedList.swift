//
//  LinkedList.swift
//  LinkedListProj
//
//  Created by SEMEN TITOVSKYI on 01.04.2020.
//  Copyright © 2020 TITO. All rights reserved.
//

import Foundation

class LinkedList<T> {
    
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

    func append(_ element: T) {
        let newNode = Node(element: element)
        
        if let lastNode = last {
          lastNode.next = newNode
        } else {
          head = newNode
        }
    }
}

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

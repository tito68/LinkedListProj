//
//  DataConverter.swift
//  LinkedListProj
//
//  Created by SEMEN TITOVSKYI on 01.04.2020.
//  Copyright © 2020 TITO. All rights reserved.
//

import Foundation

class DataConverter {
    
    // MARK: - Methods
    
    func arrayOfIntLinkedLists(head: Node<Int>?) -> [LinkedList<Int>] {
        let oddNumbersList = LinkedList<Int>()
        let evenNumbersList = LinkedList<Int>()
        
        var _node: Node? = head
        
        while let node = _node {
            if node.element % 2 == 0 {
                evenNumbersList.append(node.element)
            } else {
                oddNumbersList.append(node.element)
            }
            
            _node = node.next
        }
        
        oddNumbersList.reverseList()
        evenNumbersList.reverseList()
        
        return [oddNumbersList, evenNumbersList]
    }
}

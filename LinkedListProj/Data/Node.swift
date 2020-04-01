//
//  Node.swift
//  LinkedListProj
//
//  Created by SEMEN TITOVSKYI on 01.04.2020.
//  Copyright © 2020 TITO. All rights reserved.
//

import Foundation

class Node<T> {
    let element: T
    
    var next: Node?
    
    init(element: T) {
        self.element = element
    }
}

extension Node: CustomStringConvertible where T == Int {
    var description: String {
        return "Node \(element)"
    }
}

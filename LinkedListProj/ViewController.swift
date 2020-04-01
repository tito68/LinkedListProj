//
//  ViewController.swift
//  LinkedListProj
//
//  Created by SEMEN TITOVSKYI on 01.04.2020.
//  Copyright © 2020 TITO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let linkedList = LinkedList<Int>().getDefaultIntList()
        let converter = DataConverter()
        let result = converter.arrayOfIntLinkedLists(head: linkedList.head)
        
        print(result)
    }
}


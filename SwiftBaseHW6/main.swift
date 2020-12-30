//
//  main.swift
//  SwiftBaseHW6
//
//  Created by Владимир Поливников on 30.12.2020.
//

import Foundation

//Task1: Queue
class Queue <Type> {
    private var elements: [Type] = []
    
    func count() -> Int {
        return elements.count
    }
    
    func push(_ element: Type) {
        elements.append(element)
    }
    
    func pop() -> Type? {
        if count() > 0 {
            return elements.removeFirst()
        } else {
            print("Queue is empty!")
            return nil
        }
    }
}

var stringQueue: Queue<String> = Queue<String>()
stringQueue.push("one")
stringQueue.push("two")
for _ in (0 ... stringQueue.count()) {
    print(stringQueue.pop() ?? "")
}

var intQueue: Queue<Int> = Queue<Int>()
intQueue.push(1)
intQueue.push(2)
for _ in (0 ... intQueue.count()) {
    print(intQueue.pop() ?? "")
}





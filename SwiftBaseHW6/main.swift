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
    
    //Task2: closure
    func filter(condition: (Type) -> Bool) -> Queue<Type> {
        var newQueue: Queue<Type> = Queue<Type>()
        for element in elements where condition(element) {
            newQueue.push(element)
        }
        return newQueue
    }
    
    func forEach(predicate: (Type) -> Type) -> Queue<Type> {
        var newQueue: Queue<Type> = Queue<Type>()
        for element in elements {
            newQueue.push(predicate(element))
        }
        return newQueue
    }
}

//Task1 test
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

//Task2 test
intQueue.push(7)
intQueue.push(9)
intQueue.push(0)
intQueue.push(13)

var filteredQueue = intQueue.filter{$0 < 10}
for _ in (0 ... filteredQueue.count()) {
    print(filteredQueue.pop() ?? "")
}

let add2: (Int) -> Int = { (value: Int) -> Int in
    return value + 2
}
var changedQueue = intQueue.forEach(predicate: add2)
for _ in (0 ... changedQueue.count()) {
    print(changedQueue.pop() ?? "")
}



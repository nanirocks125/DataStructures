import UIKit


struct Queue<T> {
    
    private var storage: [T] = []
    
    init() {
        
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    var peek: T? {
        return storage.first
    }
    
    
    mutating func enqueue(_ element: T) -> Bool {
        storage.append(element)
        return true
    }
    
    mutating func dequeue() -> T? {
        
        return isEmpty ? nil : storage.removeFirst()
        
    }
    
}


extension Queue: CustomStringConvertible {
    var description: String {
        return String(describing: storage)
    }
}


var queue = Queue<Int>()

queue.enqueue(1)
queue.enqueue(3)
queue.enqueue(5)
queue.enqueue(10)

print("Queue after inserting")
print(queue)


queue.dequeue()
queue.dequeue()

print("queue after dequeuing 2 elements \n\(queue)")



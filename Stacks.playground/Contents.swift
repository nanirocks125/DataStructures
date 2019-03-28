import UIKit

struct Stack<Element> {
    
    private var storage: [Element] = []
    
    init() {
        
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        guard !storage.isEmpty else { return nil }
        
        return storage.removeLast()
        
    }
    
}



extension Stack: CustomStringConvertible {
    var description: String {
        let topDevider = "--------Top--------\n"
        let bottomDevider = "\n----------------"
        
        let elements = storage.map { "\($0)" }.reversed().joined(separator: "\n")
        
        return topDevider + elements + bottomDevider
        
    }
}



var stack = Stack<Int>()

stack.push(10)
stack.push(20)
stack.push(30)


print("before popping stack")
print(stack)

stack.pop()
print("after poppping first element, The stack is")
print(stack)



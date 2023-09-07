
class MinStack {
    var stack = [Int]()
    
    init() {
        
    }
    
    func push(_ val: Int) {
        stack.append(val)

    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        return stack[stack.count - 1]
    }
    
    func getMin() -> Int {
        return stack.min()!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
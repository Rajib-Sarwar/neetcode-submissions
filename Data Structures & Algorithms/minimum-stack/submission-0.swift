class MinStack {
    var stack: [Int]
    var minStack = [Int]()

    init() {
        stack = [Int]()
        minStack = [Int]()
    }

    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty || val <= minStack.last! { 
            minStack.append(val) 
        }
    }

    func pop() {
        if !stack.isEmpty {
            let val = stack.popLast()
            if !minStack.isEmpty && val == minStack.last! {
                minStack.removeLast()
            }
        }
    }

    func top() -> Int {
        if !stack.isEmpty {
            return stack.last!
        }
        return -1
    }

    func getMin() -> Int {
        if !minStack.isEmpty {
            return minStack.last!
        }
        return -1
    }
}

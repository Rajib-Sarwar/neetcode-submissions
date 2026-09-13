class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack = [Int]()
        stack.append(temperatures.count-1)
        for i in stride(from: temperatures.count-2, through: 0, by: -1) {
            while let last = stack.last, temperatures[last] <= temperatures[i] {
                stack.removeLast()
            }
            if let last = stack.last {
                result[i] = last - i
            }
            stack.append(i)
        }
        return result
    }
}

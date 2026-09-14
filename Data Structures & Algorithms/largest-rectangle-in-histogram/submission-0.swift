class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let length = heights.count
        var prevSmaller = Array(repeating: -1, count: length)
        var nextSmaller = Array(repeating: length, count: length)
        var stack = [Int]()

        for i in 0..<length {
            while !stack.isEmpty && heights[stack.last!] >= heights[i] { 
                stack.removeLast()
            }

            if let last = stack.last {
                prevSmaller[i] = last
            }
            stack.append(i)
        }

        stack = [Int]()
        for i in (0..<length).reversed() {
            while !stack.isEmpty && heights[stack.last!] >= heights[i] { 
                stack.removeLast()
            }

            if let last = stack.last {
                nextSmaller[i] = last
            }
            stack.append(i)
        }

        var maxArea = 0
        for i in 0..<length {
            maxArea = max(maxArea, (nextSmaller[i] - prevSmaller[i] - 1) * heights[i])
        }

        return maxArea
    }
}

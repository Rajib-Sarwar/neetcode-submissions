class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let length = heights.count
        var prevSmaller = Array(repeating: -1, count: length)
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
        var maxArea = 0
        for i in (0..<length).reversed() {
            while !stack.isEmpty && heights[stack.last!] >= heights[i] { 
                stack.removeLast()
            }

            let last = stack.isEmpty ? length : stack.last!
            maxArea = max(maxArea, (last - prevSmaller[i] - 1) * heights[i])
            
            stack.append(i)
        }

        return maxArea
    }
}

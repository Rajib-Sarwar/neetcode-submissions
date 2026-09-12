class Solution {
    func trap(_ height: [Int]) -> Int {
        var leftMax = Array(repeating: 0, count: height.count)
        leftMax[0] = height[0]
        for i in 1..<height.count {
            leftMax[i] = max(leftMax[i-1], height[i])
        }
        
        var rightMax = Array(repeating: 0, count: height.count)
        rightMax[height.count - 1] = height[height.count-1]
        for j in stride(from: height.count - 2, through: 0, by: -1) {
            rightMax[j] = max(rightMax[j+1], height[j])
        }

        var total = 0
        for i in 0..<height.count {
            total += (min(leftMax[i], rightMax[i]) - height[i])
        }

        return total
    }
}

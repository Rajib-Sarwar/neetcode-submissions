class Solution {
    func trap(_ height: [Int]) -> Int {
        var water = 0
        
        var left = 0
        var right = height.count - 1

        var maxLeft = 0
        var maxRight = 0

        while left <= right {
            if height[left] <= height[right] {
                if height[left] >= maxLeft {
                    maxLeft = height[left]
                } else {
                    water += maxLeft - height[left]
                }
                left += 1
            } else {
                if height[right] >= maxRight {
                    maxRight = height[right]
                } else {
                    water += maxRight - height[right]
                }
                right -= 1
            }
        }

        return water
    }
}
class Solution {
    func trap(_ height: [Int]) -> Int {
        var water = 0
        
        var left = 0
        var right = height.count - 1

        var maxLeft = 0
        var maxRight = 0

        while left <= right {
            if height[left] <= height[right] {
                maxLeft = max(maxLeft, height[left])
                water += maxLeft - height[left]
                left += 1
            } else {
                maxRight = max(maxRight, height[right])
                water += maxRight - height[right]
                right -= 1
            }
        }

        return water
    }
}
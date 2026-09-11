class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var i = 0
        var j = heights.count - 1

        var maxArea = 0
        while i < j {
            let area = min(heights[i], heights[j]) * (j - i)
            maxArea = max(maxArea, area)
            if heights[i] < heights[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        return maxArea
    }
}

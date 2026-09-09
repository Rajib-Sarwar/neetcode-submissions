class Solution {
    func sortColors(_ nums: inout [Int]) {
        var counts = Array(repeating: 0, count: 3)

        for num in nums {
            counts[num] += 1
        }

        var index = 0
        for (color, count) in counts.enumerated() {
            for _ in 0..<count {
                nums[index] = color
                index += 1
            }
        }
    }
}

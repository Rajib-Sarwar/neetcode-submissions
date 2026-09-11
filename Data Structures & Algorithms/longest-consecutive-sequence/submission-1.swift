class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        var longest = 0

        for var num in nums {
            if !numSet.contains(num - 1) {
                var current = num
                var length = 1
                while numSet.contains(current + 1) { 
                    current += 1
                    length += 1
                }
                longest = max(longest, length)
            }
        }
        return longest
    }
}

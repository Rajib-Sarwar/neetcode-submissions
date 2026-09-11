class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var result = 0
        var count = 0
        for var num in nums {
            if !set.contains(num - 1) {
                while set.contains(num) { 
                    count += 1
                    num += 1
                }
                result = max(result, count)
                count = 0
            }
        }
        return result
    }
}

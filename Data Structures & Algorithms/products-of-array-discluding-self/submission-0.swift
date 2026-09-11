class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            result[i] = result[i-1] * nums[i-1]
        }
        // print(result)
        var suffix = 1
        for j in stride(from: result.count - 1, through: 0, by: -1) {
            result[j] *= suffix
            suffix *= nums[j] 
        }

        return result
    }
}

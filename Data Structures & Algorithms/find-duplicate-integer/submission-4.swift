class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var nums = nums

        for num in nums {
            let index = abs(num)

            if nums[num] < 0 {
                return num
            }

            nums[num] *= -1
        }
        return -1
    }
}

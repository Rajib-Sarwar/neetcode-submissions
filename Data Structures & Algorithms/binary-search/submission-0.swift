class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        return binary(0, nums.count-1, nums, target)
    }

    func binary(_ left: Int, _ right: Int, _ nums: [Int], _ target: Int) -> Int {
        var l = left
        var r = right

        while l <= r {
            let mid = (r + l)/2

            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        return -1
    }
}
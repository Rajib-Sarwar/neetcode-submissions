class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left < right {
            let mid = left + (right - left)/2

            if nums[mid] > nums[nums.count - 1] {
                left = mid + 1
            } else {
                right = mid
            }
        }

        let pivot = left
        
        if target == nums[pivot] { return pivot }
        
        if target > nums[pivot] && target <= nums[nums.count - 1] {
            left = pivot + 1
            right = nums.count - 1
        } else {
            left = 0
            right = pivot - 1
        }

        while left <= right {
            let mid = left + (right - left)/2

            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1      
    }
}

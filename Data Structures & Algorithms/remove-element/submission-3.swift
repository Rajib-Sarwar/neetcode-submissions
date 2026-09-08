class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var j = nums.count - 1
        var i = 0
        while j >= 0 && nums[j] == val { j -= 1 }
        while i <= j {
            if nums[i] == val { 
                nums.swapAt(i, j)
                while j >= 0 && nums[j] == val { j -= 1 }
            }  
            i += 1
        }

        return j + 1
    }
}

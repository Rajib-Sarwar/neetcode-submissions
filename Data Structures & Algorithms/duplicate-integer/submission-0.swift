class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var map = [Int: Int]()

        for num in nums {
            map[num, default: 0] += 1
            if let current = map[num], current > 1 { 
                return true 
            }
        }
        return false
    }
}

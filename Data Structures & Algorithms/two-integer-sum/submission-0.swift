class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()

        for (i, num) in nums.enumerated() {
            let remain = target - num

            if let index = map[remain] {
                return [index, i]
            }

            map[num] = i
        }
        return [-1, -1]
    }
}

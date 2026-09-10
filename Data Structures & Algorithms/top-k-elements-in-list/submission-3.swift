class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqMap = [Int: Int]()

        for num in nums {
            freqMap[num, default: 0] += 1
        }

        var buckets = [[Int]](repeating: [], count: nums.count + 1)

        for (num, frequency) in freqMap {
            buckets[frequency].append(num)
        }

        var result = [Int]()
        for freq in stride(from: buckets.count - 1, through: 1, by: -1) {
            for num in buckets[freq] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        return result
    }
}

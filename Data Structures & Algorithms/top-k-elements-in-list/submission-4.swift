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
        for bucket in buckets.reversed() {
            for num in bucket {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        return result
    }
}

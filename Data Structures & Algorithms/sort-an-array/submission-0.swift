class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }

        let mid = nums.count/2
        let arr1 = sortArray(Array(nums[..<mid]))
        let arr2 = sortArray(Array(nums[mid...]))

        return merge(arr1, arr2) 
    }

    func merge(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var result = [Int]()
        while i < arr1.count && j < arr2.count {
            if arr1[i] < arr2[j] {
                result.append(arr1[i])
                i += 1
            } else {
                result.append(arr2[j])
                j += 1
            }
        }

        for n in i..<arr1.count {
            result.append(arr1[n])
        }

        for n in j..<arr2.count {
            result.append(arr2[n])
        }

        return result
    }
}

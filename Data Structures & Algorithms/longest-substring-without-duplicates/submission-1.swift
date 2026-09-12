class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map = [Character: String.Index]()
        var left = s.startIndex
        var right = s.startIndex

        var maxLength = 0
        while right < s.endIndex {
            if let index = map[s[right]], index >= left {
                left = s.index(after: index)
            }

            map[s[right]] = right
            let distance = s.distance(from: left, to: right) + 1
            maxLength = max(maxLength, distance)
            right = s.index(after: right)
        }
        return maxLength
    }   
}

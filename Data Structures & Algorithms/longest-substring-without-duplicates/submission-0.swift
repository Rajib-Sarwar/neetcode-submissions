class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var setChar = Set<Character>()
        var left = s.startIndex
        var right = s.startIndex

        var maxLength = 0
        while right < s.endIndex {
            while setChar.contains(s[right]) {
                setChar.remove(s[left])
                left = s.index(after: left)
            }
            setChar.insert(s[right])
            let distance = s.distance(from: left, to: right) + 1
            maxLength = max(maxLength, distance)
            right = s.index(after: right)
        }
        return maxLength
    }   
}

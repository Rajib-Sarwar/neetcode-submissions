class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans = [[Character: Int]: [String]]()

        for str in strs {
            var word = [Character: Int]()
            for char in str {
                word[char, default: 0] += 1
            }
            ans[word, default: []].append(str)
        }

        return Array(ans.values)
    }
}

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if t.count != s.count { return false }
        var map = [Character: Int]()

        for c in s {
            map[c, default: 0] += 1
        }

        for c in t {
            map[c, default: 0] -= 1
        }

        for v in map.values {
            if v != 0 {
                return false
            }
        }

        return true
    }
}

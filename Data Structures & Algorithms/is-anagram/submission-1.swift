class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
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

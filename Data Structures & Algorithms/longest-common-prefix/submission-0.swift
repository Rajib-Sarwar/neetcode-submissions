class Solution {
    private let root = TrieNode()

    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }

        for str in strs {
            insert(str)
        }

        var node = root
        var prefix = ""

        while node.children.count == 1, !node.isEndOfWord {
            let child = node.children.first!
            prefix.append(child.key)
            node = child.value
        }
        return prefix
    }

    func insert(_ str: String) {
        var node = root

        for char in str {
            if node.children[char] == nil {
                node.children[char] = TrieNode()
            }
            
            node = node.children[char]!
        }

        node.isEndOfWord = true
    }
}

class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isEndOfWord = false
}

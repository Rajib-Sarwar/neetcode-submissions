/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        var balanced = true

        func isHeightBalanced(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }

            let left = isHeightBalanced(root.left)
            let right = isHeightBalanced(root.right)

            balanced = balanced && abs(left - right) <= 1

            return max(left, right) + 1
        }

        isHeightBalanced(root)

        return balanced
    }
}

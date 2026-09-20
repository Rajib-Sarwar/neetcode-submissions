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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root else { return false }

        if isSameTree(root, subRoot) {
            return true
        }

        return isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot)
    }

    func isSameTree(_ p: TreeNode?, _ s: TreeNode?) -> Bool {
        if p == nil && s == nil { return true }

        if let p = p, let s = s, p.val == s.val {
            return isSameTree(p.left, s.left) && isSameTree(p.right, s.right)
        } else {
            return false
        }
    }
}

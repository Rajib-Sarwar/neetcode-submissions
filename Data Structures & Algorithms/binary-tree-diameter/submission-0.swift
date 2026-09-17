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
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var maxDiameter = 0
        
        func maxDepth(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }

            let left = maxDepth(root.left)
            let right = maxDepth(root.right)

            maxDiameter = max(maxDiameter, left + right)

            return max(left, right) + 1
        }

        _ = maxDepth(root)

        return maxDiameter
    }
}

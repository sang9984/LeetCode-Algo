/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    
    var count = 0
    
    func countNodes(_ root: TreeNode?) -> Int {
        traversal(root)
        return count
    }
    
    func traversal(_ root: TreeNode?) {
        guard let node = root else {
            return
        }
        
        count += 1
        traversal(node.left)
        traversal(node.right)
    }
}
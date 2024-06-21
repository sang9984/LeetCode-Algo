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
    func minDiffInBST(_ root: TreeNode?) -> Int {
        var values = [Int]()
        traversal(root, &values)
        
        var result = Int.max
        for i in 1..<values.count{
            result = min(result, abs(values[i] - values[i - 1]))
        }
        
        return result
    }
    
    // 중위 순회
    func traversal(_ node: TreeNode?, _ array: inout [Int]){
        
        guard let node = node else {return}
        
        traversal(node.left, &array)
        array.append(node.val)
        traversal(node.right, &array)
    }
}
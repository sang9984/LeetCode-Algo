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

    private var maxDept = 0
    private var dept = 0
    
    func maxDepth(_ root: TreeNode?) -> Int {
        dfsPostOrder(root)
        return maxDept
    }

    func dfsPostOrder(_ root: TreeNode?) {
        guard let node = root else { return } // nil 확인
        
        dept += 1
        
        dfsPostOrder(node.left)  // 왼쪽 자식 방문
        dfsPostOrder(node.right) // 오른쪽 자식 방문
        
        maxDept = max(dept, maxDept) // 최대 깊이 업데이트
        
        dept -= 1 // 현재 깊이 감소
    }
}
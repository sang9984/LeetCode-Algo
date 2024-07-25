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
    
    var rightSideNodes = [Int]()
    
    func rightSideView(_ root: TreeNode?) -> [Int] {
        rightSideNodes = []
        dfs(root, 0)
        return rightSideNodes
    }
    
    func dfs(_ node: TreeNode?, _ level: Int) {
        guard let node = node else { return }
        
        // 현재 레벨에서 처음 방문하는 노드라면 추가
        if level == rightSideNodes.count {
            rightSideNodes.append(node.val)
        }
        
        // 먼저 오른쪽 자식을 탐색하고, 그 다음 왼쪽 자식을 탐색
        dfs(node.right, level + 1)
        dfs(node.left, level + 1)
    }
}
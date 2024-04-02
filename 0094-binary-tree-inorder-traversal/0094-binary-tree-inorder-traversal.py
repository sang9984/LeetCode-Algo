# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

class Solution:

    def inorder(self, node):
        if node.left:
            self.inorder(node.left)
        self.result.append(node.val)
        if node.right:
            self.inorder(node.right)

    def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        self.result = []
        if root:
            self.inorder(root)
        return self.result

    
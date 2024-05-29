class Solution:
    def findDuplicate(self, nums: List[int]) -> int:
        checker = {}
        
        for i in nums:
            if i not in checker:
                checker[i] = 1
            else:
                return i
        
        
class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        if target not in nums:
            return [-1, -1]
        
        result = []
        for i in range(len(nums)):
            if target == nums[i]:
                result.append(i)
                
        if len(result) == 1:
            result.append(result[0])
        else:
            result = [result[0], result[len(result) - 1]]

        return result
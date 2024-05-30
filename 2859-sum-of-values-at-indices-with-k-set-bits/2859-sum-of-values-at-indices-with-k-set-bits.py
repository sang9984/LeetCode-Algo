class Solution:
    def sumIndicesWithKSetBits(self, nums: List[int], k: int) -> int:
        
        def get_binary(num):
            count = 0
        
            while num != 0:
                value = num % 2
                if value == 1:
                 count += 1
                num //= 2
            return count
        
        result = 0
        
        for i in range(len(nums)):
            if get_binary(i) == k:
                result += nums[i]
        
        return result
    
    
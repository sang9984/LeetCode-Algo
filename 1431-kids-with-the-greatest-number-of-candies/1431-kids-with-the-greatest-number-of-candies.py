class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        max_value = max(candies)
        result = []
        for i in candies:
            if i + extraCandies >= max_value:
                result.append(True)
            else: 
                result.append(False)
        
        return result
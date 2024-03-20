class Solution:
    def maxArea(self, height: List[int]) -> int:
        p1 = 0
        p2 = len(height) - 1
        record = 0

        while p1 < p2:
            h = min(height[p1], height[p2])
            w = (p2 - p1) * h
            record = max(record, w)
            print(p1, p2)
            if height[p1] >= height[p2]:
                p2 -= 1
            else:
                p1 += 1
        
        return record

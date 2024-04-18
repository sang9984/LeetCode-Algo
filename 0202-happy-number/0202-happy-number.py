class Solution:
    def isHappy(self, n: int) -> bool:
        seen = set() 
        
        while n != 1:
            if n in seen:
                return False  
            seen.add(n)
            result = 0
            s = str(n)
            for i in s:
                result += int(i) ** 2
            n = result

        return True  

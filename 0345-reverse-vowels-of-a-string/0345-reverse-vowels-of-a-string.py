class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = {'a','e','i','o','u', "A", 'E',"I","O","U"}
        record = []
        result = ""

        for char in s:
            if char in vowels:
                record.append(char)
        
        for i in range(len(s)):
            if s[i] in vowels:
                result += record.pop()
            else:
                result += s[i]
        
        return result
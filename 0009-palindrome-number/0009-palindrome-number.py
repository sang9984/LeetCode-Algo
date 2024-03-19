class Solution:
    def isPalindrome(self, x: int) -> bool:
        string1 = str(x)
        string2 = string1[::-1]
        return string1 == string2
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:

        sp = 0
        tp = 0
        result = ""
        while sp < len(s) and tp < len(t):
            if t[tp] != s[sp]:
                tp += 1
            else:
                result += s[sp]
                sp += 1
                tp += 1

        return result == s
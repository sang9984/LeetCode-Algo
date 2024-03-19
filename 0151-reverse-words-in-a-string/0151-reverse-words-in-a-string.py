class Solution:
    def reverseWords(self, s: str) -> str:
        record = s.split()
        record.reverse()

        return " ".join(record)


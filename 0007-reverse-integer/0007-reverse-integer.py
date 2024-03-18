class Solution:
    def reverse(self, x: int) -> int:
        if x == 0:
            return 0

        string_x = list(str(x))
        string_x.reverse()

        if '-' in string_x:
            string_x.pop()

        string_x = "".join(string_x)
        int_x = int(string_x)

        if x < 0:
            int_x *= -1
        
        if int_x > 2 ** 31 - 1 or int_x < -2 ** 31:
            return 0

        return int_x
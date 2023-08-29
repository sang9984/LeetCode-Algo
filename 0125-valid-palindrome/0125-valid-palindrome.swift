class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var ss = ""
        for i in s.lowercased() where i.isLetter || i.isNumber{ss += String(i)}
        return ss == String(ss.reversed())
    }
}
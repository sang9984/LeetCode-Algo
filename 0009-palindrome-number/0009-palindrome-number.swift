class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let s = String(x)
        let rs = String(s.reversed())
        var result = true

        if s != rs {
            result = false
        } 
        return result
    }
    
}
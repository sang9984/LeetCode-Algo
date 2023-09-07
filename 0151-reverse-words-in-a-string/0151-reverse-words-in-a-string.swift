class Solution {
    func reverseWords(_ s: String) -> String {
        if s.count == 1 {return s}

        var result = ""
        let a = s.split(separator:" ").reversed()
        
        return a.joined(separator: " ")
    }
}
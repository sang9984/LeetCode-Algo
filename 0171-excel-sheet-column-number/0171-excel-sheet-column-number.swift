class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0

        for a in columnTitle {
            guard let n = a.asciiValue else { return 0 }
            let numericValue = Int(n) - 64  
            result = result * 26 + numericValue 
        }

        return result
    }
}
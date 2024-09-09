class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        var result = 0

        for a in patterns {
            if word.contains(a) {
                result += 1
            } 
        }

        return result
    }
}
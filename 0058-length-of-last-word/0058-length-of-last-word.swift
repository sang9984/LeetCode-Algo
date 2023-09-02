class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var result = s.split(separator:" ")
        return result.removeLast().count
    }
}
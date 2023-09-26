class Solution {
    func removeStars(_ s: String) -> String {
        var stack = ""
        var sArr = s

        for i in sArr {
            if !stack.isEmpty, i == "*" {
                stack.removeLast()
            }else {stack += String(i)}
        }
        
        return stack
    }
}
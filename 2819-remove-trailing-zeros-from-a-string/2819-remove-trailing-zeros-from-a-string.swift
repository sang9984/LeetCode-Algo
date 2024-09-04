class Solution {
    func removeTrailingZeros(_ num: String) -> String {
        var stack = Array(num)

        for i in 0..<num.count {
            if stack.last! == "0" {
                stack.removeLast()
            }else {
                break
            }
        }

        return String(stack)
    }
}
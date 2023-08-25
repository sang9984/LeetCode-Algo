class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()

        for i in s {
            if stack.isEmpty {
                stack.append(String(i))
            }else if stack[stack.count - 1] == "(" && i == ")" {
                stack.removeLast()
            }else if stack[stack.count - 1] == "{" && i == "}" {
                stack.removeLast()
            }else if stack[stack.count - 1] == "[" && i == "]" {
                stack.removeLast()
            }else {
                stack.append(String(i))
            }
        }

        return stack.isEmpty ? true:false
    }
}
class Solution {

    let pair = ["(",")"]
    var count = 0
    var result = [String]()

    func generateParenthesis(_ n: Int) -> [String] {
        count = n * 2
        backTracing(1, "(")
        return result
    }

    func backTracing(_ index: Int, _ letter: String) {
        if index == count {
            var stack = [Character]()
            for i in letter {
                if !stack.isEmpty && stack[stack.count - 1] == "(", i == ")" {
                    stack.removeLast()
                }else {
                    stack.append(i)
                }
            }
            if stack.isEmpty {
                result.append(letter)
                return
            }else {
                return
            }
        }

        for j in pair {
            backTracing(index + 1, letter + j)
        } 

    }
}
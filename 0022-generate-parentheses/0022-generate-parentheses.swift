class Solution {
    var result = [String]()

    func generateParenthesis(_ n: Int) -> [String] {
        backTracing("", 0, 0, n)
        return result
    }

    func backTracing(_ currentString: String, _ open: Int, _ close: Int, _ max: Int) {
        if currentString.count == max * 2 {
            result.append(currentString)
            return
        }

        if open < max {
            backTracing(currentString + "(", open + 1, close, max)
        }

        if close < open {
            backTracing(currentString + ")", open, close + 1, max)
        }
    }
}

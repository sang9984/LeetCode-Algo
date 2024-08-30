class Solution {
    func generatePossibleNextMoves(_ currentState: String) -> [String] {
        var p = 0
        var result = [String]()
        if currentState.count < 2 || !currentState.contains("+") {return []}

        while p < currentState.count - 1{
            var s = Array(currentState)

            if s[p] == "+" && s[p + 1] == "+" {
                s[p] = "-" 
                s[p + 1] = "-"    
                result.append(String(s))
            }
            p += 1
        }

        return result
    }
}
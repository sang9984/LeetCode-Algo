class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }
        var rows = Array(repeating: "", count: min(numRows, s.count))
        var currentRow = 0
        var goingDown = false
        
        for char in s {
            rows[currentRow] += String(char)
            if currentRow == 0 || currentRow == numRows - 1 { goingDown.toggle() }
            currentRow += goingDown ? 1 : -1
        }
        
        return rows.joined()
    }
}

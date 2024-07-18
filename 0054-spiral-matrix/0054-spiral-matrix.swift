class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty {
            return []
        }
        
        let rows = matrix.count
        let cols = matrix[0].count
        var result = [Int]()
        var seen = Array(repeating: Array(repeating: false, count: cols), count: rows)
        
        let dr = [0, 1, 0, -1] // direction for rows: right, down, left, up
        let dc = [1, 0, -1, 0] // direction for cols: right, down, left, up
        
        var r = 0, c = 0, di = 0
        
        for _ in 0..<(rows * cols) {
            result.append(matrix[r][c])
            seen[r][c] = true
            let cr = r + dr[di]
            let cc = c + dc[di]
            
            if cr >= 0 && cr < rows && cc >= 0 && cc < cols && !seen[cr][cc] {
                r = cr
                c = cc
            } else {
                di = (di + 1) % 4
                r += dr[di]
                c += dc[di]
            }
        }
        
        return result
    }
}
class Solution {
    func largestMagicSquare(_ grid: [[Int]]) -> Int {
        if grid[0].count == 1 || grid.count == 1 {return 1}

        var result = 1
        let maxDimension = min(grid.count, grid[0].count)

        // 2x2 이상의 마방진을 찾기 위해 반복
        for k in 2...maxDimension {
            for i in 0...(grid.count - k) {
                for j in 0...(grid[0].count - k) {
                    if box(i, j, k, grid) {
                        result = k
                    }
                }
            }
        }
        return result
    }

    func box(_ row: Int, _ col: Int, _ k: Int, _ matrix: [[Int]]) -> Bool {
        var sum1 = 0
        var sum2 = 0

        // 두 대각선의 합 계산
        for i in 0..<k {
            sum1 += matrix[row + i][col + i]
            sum2 += matrix[row + i][col + k - 1 - i]
        }
        
        if sum1 != sum2 {
            return false
        }

        // 행과 열의 합 계산
        for i in 0..<k {
            var sumRow = 0
            var sumCol = 0

            for j in 0..<k {
                sumRow += matrix[row + i][col + j]
                sumCol += matrix[row + j][col + i]
            }

            if sumRow != sum1 || sumCol != sum1 {
                return false
            }
        }
        return true
    }
}

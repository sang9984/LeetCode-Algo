class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var zeroRow = Set<Int>()
        var zeroCol = Set<Int>()
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if matrix[i][j] == 0 {
                   zeroRow.insert(i)
                   zeroCol.insert(j) 
                }
            }
        }
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if zeroRow.contains(i) || zeroCol.contains(j) {
                    matrix[i][j] = 0
                }
            }
        }
        print(matrix)
    }
}
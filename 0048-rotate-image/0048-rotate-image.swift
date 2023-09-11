class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var result = [[Int]]()
        for i in 0..<matrix[0].count {
            var buffer = [Int]()
            for j in 0..<matrix.count {
                buffer.append(matrix[j][i])
            }
            result.append(buffer.reversed())
        }
        matrix = result
    }
}
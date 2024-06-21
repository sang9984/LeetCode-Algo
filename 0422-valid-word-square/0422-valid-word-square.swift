class Solution {
    func validWordSquare(_ words: [String]) -> Bool {
        // 행렬을 전치한 결과가 동일하면 True
        var matrix = [String]()
        var nRow = 0

        for row in 0..<words.count{
            for col in words[row]{
                if row == 0 {
                    matrix.append("")
                }
                if nRow >= matrix.count {
                    matrix.append("")
                }
                matrix[nRow] += String(col)
                nRow += 1
            }
            nRow = 0
        }

        return words == matrix
    }
}
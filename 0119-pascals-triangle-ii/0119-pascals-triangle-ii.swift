class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {return [1]}
        var preRow = [1]
        for i in 1...rowIndex {
            var row = Array(repeating: 1, count: i + 1)
            for j in 1..<i {
                row[j] = preRow[j] + preRow[j - 1]
            }
            preRow = row
        }
        return preRow
    }
}
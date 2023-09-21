class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        var result = 0

        for i in 0..<grid[0].count {
            var sub = [Int]()
            for j in 0..<grid.count {
                sub.append(grid[j][i])
            }
            
            for n in grid {
                if n == sub {
                    result += 1
                }
            }
        }

        return result
    }
}
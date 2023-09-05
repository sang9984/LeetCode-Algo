class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 {return [[1]]}
        var first = [1]
        var result = [first]
        
        for i in 1..<numRows{
            var buffer = Array(repeating: 1, count: i + 1)

            for j in 1..<i {
                buffer[j] = first[j - 1] + first[j] 
            }

            first = buffer
            result.append(first)
        }
        return result
    }
}
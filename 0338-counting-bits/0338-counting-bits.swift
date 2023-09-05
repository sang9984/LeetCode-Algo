class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = [Int]()

        for i in 0...n {
            result.append(String(i, radix: 2).filter{$0 == "1"}.count)
        }
        
        return result
    }
}
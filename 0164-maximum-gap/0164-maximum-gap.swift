class Solution {
    func maximumGap(_ nums: [Int]) -> Int {
        if nums.count == 1 {return 0}
        
        let sorted = nums.sorted()
        var result = 0

        for i in 0..<sorted.count - 1 {
            let b = sorted[i + 1] - sorted[i]
            if result < b {result = b}
        }
        return result
    }
}
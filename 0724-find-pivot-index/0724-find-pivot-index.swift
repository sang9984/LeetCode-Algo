class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        let total = nums.reduce(0, +)
        var sum = 0
        
        for (i, v) in nums.enumerated() {
            if sum == total - sum - v {return i}
            sum += v
        }
        return -1
    }
}

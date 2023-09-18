class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = 0
        for i in 0..<k {
            sum += nums[i]
        }
        
        var result = sum
        
        for i in k..<nums.count {
            sum += nums[i] - nums[i-k]
            result = max(result, sum)
        }

        return Double(result) / Double(k)
    }
}
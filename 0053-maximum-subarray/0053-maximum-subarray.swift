class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var sum = 0
        
        for num in nums {
            sum = max(num, sum+num)
            result = max(sum, result)    
        }
    
        return result
    }
}
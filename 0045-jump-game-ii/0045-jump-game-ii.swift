class Solution {
    func jump(_ nums: [Int]) -> Int {
        var steps = 0
        var maxReach = 0
        var end = 0
        
        for i in 0..<nums.count-1 {
            maxReach = max(maxReach, i + nums[i])
            if i == end {
                steps += 1
                end = maxReach
            }
        }
        
        return steps
    }
}

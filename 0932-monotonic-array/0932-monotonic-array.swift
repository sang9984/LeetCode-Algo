class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        var increasing = true
        var decreasing = true
        for i in 1..<nums.count {
            increasing = increasing && nums[i - 1] <= nums[i]
            decreasing = decreasing && nums[i - 1] >= nums[i]
        }
        return increasing || decreasing
    }
}
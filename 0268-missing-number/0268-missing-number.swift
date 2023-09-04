class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        let maxValue = nums.count - 1
        
        for i in 0...maxValue {
            if !numsSet.contains(i) {
                return i
            }
        }
        return maxValue + 1
    }
}
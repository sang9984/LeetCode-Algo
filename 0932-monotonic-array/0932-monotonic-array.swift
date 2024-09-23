class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        if nums.count == 1 {return true}

        var result = nums.sorted()

        return result == nums || nums == result.reversed()
    }
}
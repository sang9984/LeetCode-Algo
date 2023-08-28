class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        for i in nums where i != nums[index] {
            index += 1
            nums[index] = i
        }
        return index + 1
    }
}
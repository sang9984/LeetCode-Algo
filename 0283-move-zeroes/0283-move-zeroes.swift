import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) -> [Int]{
        var check = 0
        
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(i, check)
                check += 1
            }
        }
        return nums
    }
}
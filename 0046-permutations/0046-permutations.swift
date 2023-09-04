class Solution {
    var result = [[Int]]()
    var nums: [Int] = []

    func permute(_ nums: [Int]) -> [[Int]] {
        self.nums = nums
        backTracking([])
        return result
    }

    func backTracking(_ current: [Int]) {
        if current.count == nums.count {
            result.append(current)
            return
        }

        for num in nums where !current.contains(num) {
            backTracking(current + [num])
        }
    }
}

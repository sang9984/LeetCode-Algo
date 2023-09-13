class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let numsArr = Set(nums)
        var n = 1
        while true {
            if !numsArr.contains(n) {break}
            n += 1
        }
        return n
    }
}
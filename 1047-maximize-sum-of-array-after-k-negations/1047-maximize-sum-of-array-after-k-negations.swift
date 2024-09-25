class Solution {
    func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
        var nums2 = nums.sorted()
        var k = k
        var i = 0

        while i < nums2.count && nums2[i] < 0 && k > 0 {
            nums2[i] = -nums2[i]
            k -= 1
            i += 1
        }

        nums2.sort()

        if k % 2 == 1 {
            nums2[0] = -nums2[0]
        }

        return nums2.reduce(0, +)
    }
}
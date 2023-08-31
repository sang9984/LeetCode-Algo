class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 += nums2
        nums1 = nums1.filter{$0 != 0}
        let sum = m + n
        let countOfNums1 = nums1.count
        if countOfNums1 < sum {
            for i in 0..<sum - nums1.count {
                nums1.append(0)
            }
        }
        nums1 = nums1.sorted()
        print(nums1)
    }
}
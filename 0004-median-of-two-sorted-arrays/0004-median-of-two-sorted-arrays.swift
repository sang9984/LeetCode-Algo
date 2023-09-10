class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let a = nums1 + nums2
        let b = a.sorted()
        let len = b.count

        if len % 2 != 0 {
            return Double(b[len / 2])
        } else {
            return Double((b[len / 2] + b[len / 2 - 1])) / Double(2)
        }
    }
}
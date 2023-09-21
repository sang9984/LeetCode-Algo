class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let a = Set(nums1)
        let b = Set(nums2)

        return [Array(a.subtracting(b)),Array(b.subtracting(a))]
    }
}
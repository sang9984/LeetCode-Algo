class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var a: Set<Int> = []

        for i in nums {
            if a.contains(i) {
                return true
            }else {a.insert(i)}
        }

        return false
    }
}
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var hash = [Int:Int]()
        var result = 0

        for (i,j) in nums.enumerated() {
            hash[j] = i
        }

        if hash.keys.contains(target) {
            result = hash[target]!
        }else {
            for i in 0..<nums.count {
                if nums[i] > target {
                    result = i
                    break
                }
                result = i + 1
            }
        }

        return result
    }
}
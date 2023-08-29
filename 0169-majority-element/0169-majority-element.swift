class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var hash = [Int:Int]()
        var result = 0
        for i in nums {
            if hash[i] == nil {
                hash[i] = 1
            }else {hash[i]! += 1}
        }
        
        for i in hash.keys {
            if hash[i]! > nums.count / 2 {
                return i
            }
        }
        return 0
    }
}
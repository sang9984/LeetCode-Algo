class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var hash = [Int:Int]()

        for i in nums {
            if hash[i] == nil {
                hash[i] = 1
            }else {
                hash[i]! += 1
            }
        }
        return hash.sorted(by: {$0.value < $1.value})[0].key
    }
}
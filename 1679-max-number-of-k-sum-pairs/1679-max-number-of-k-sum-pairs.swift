class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        if nums.count == 1 {return 0}
        var result = 0
        var arr = nums.sorted()
        var p1 = 0
        var p2 = arr.count - 1
        
        while p1 < p2 {
            let sum = arr[p1] + arr[p2] 
            if sum > k {
                p2 -= 1
            }else if sum < k {
                p1 += 1
            }else {
                p1 += 1
                p2 -= 1
                result += 1
            }
        }
        return result
    }
}
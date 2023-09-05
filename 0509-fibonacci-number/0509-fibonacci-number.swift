class Solution {
    func fib(_ n: Int) -> Int {
        if n < 2 {return n}
        var nums = [0,1]  

        for i in 2...n {
            nums.append(nums[i - 1] + nums[i - 2])
        }

        return nums[nums.count - 1]
    }
}
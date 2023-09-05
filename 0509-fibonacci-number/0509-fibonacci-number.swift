class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {return 0}
        if n == 1 {return 1}
        var nums = [0,1]  

        for i in 2...n {
            nums.append(nums[i - 1] + nums[i - 2])
        }

        return nums[nums.count - 1]
    }
}
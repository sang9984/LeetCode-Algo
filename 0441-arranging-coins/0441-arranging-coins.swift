class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        if n == 1 {return 1}
        
        var sum = 0
        var counter = 0
        var stack = 1

        while sum < n {
            sum += stack
            counter += 1
            stack += 1
        }

        return sum == n ? counter : counter - 1
    }
}
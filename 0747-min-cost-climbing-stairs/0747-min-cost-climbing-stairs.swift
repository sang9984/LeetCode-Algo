class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        // 1칸 혹은 2칸만 이동이 가능하다
        // 시작 지점은 0 혹은 1 인덱스에서 시작이 가능하다
        // 최소 코스트를 구해라
        let n = cost.count
        if n == 0 { return 0 }
        if n == 1 { return cost[0] }
        
        var dp = Array(repeating: 0, count: n)
        dp[0] = cost[0]
        dp[1] = cost[1]
        
        for i in 2..<n {
            dp[i] = min(dp[i - 1], dp[i - 2]) + cost[i]
        }
        
        return min(dp[n - 1], dp[n - 2])
    }
}
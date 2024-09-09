class Solution {
    func findContestMatch(_ n: Int) -> String {
        var n = n
        var arr = [String](repeating: "", count: n)
        for i in 0..<arr.count {
            arr[i] = String(i+1)
        }
        while n > 1 {
            for i in 0..<n where i < n {
                arr[i] = "(" + arr[i] + "," + arr[n - 1 - i] + ")"
            } 
            n /= 2
        }
        return arr[0]
    }
}
class Solution {
    func valueAfterKSeconds(_ n: Int, _ k: Int) -> Int {
        var buffer = [Int](repeating: 1, count: n)

        for _ in 1...k {
            for i in 1..<n {
                buffer[i] = (buffer[i-1] + buffer[i]) % 1_000_000_007
            }
        }

        return buffer.last!
    }
}

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var buffer = [0]
        var sum = 0
        for i in gain {
            sum += i
            buffer.append(sum)
        }
        return buffer.max()!
    }
}
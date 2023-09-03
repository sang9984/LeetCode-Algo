class Solution {
    var result = [[Int]]()
    var target = 0
    var candidates = [Int]()

    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        self.target = target
        self.candidates = candidates
        backTracking([], 0, 0)
        return result
    }

    func backTracking(_ current: [Int], _ sum: Int, _ startIndex: Int) {
        if sum == target {
            result.append(current)
            return
        }
        
        if sum > target {
            return
        }

        for i in startIndex..<candidates.count {
            let num = candidates[i]
            backTracking(current + [num], sum + num, i)
        }
    }
}

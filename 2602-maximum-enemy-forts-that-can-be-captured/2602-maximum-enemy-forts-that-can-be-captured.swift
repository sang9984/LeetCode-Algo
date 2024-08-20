class Solution {
    func captureForts(_ forts: [Int]) -> Int {
        if !forts.contains(1) || !forts.contains(-1) { return 0 }
        
        var result = 0
        var oneChecker = -1

        // 왼쪽에서 오른쪽으로 탐색
        for i in 0..<forts.count {
            if forts[i] == 1 {
                oneChecker = i
            } else if forts[i] == -1 && oneChecker != -1 {
                result = max(i - oneChecker - 1, result)
                oneChecker = -1 
            }
        }

        // 오른쪽에서 왼쪽으로 탐색
        oneChecker = -1
        for i in (0..<forts.count).reversed() {
            if forts[i] == 1 {
                oneChecker = i
            } else if forts[i] == -1 && oneChecker != -1 {
                result = max(oneChecker - i - 1, result)
                oneChecker = -1 
            }
        }

        return result
    }
}

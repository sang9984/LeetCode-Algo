class Solution {
    func longestIdealString(_ s: String, _ k: Int) -> Int {
        // DP 배열을 사용하여 각 문자의 최대 길이를 저장
        var dp = Array(repeating: 0, count: 26)  // 26개의 알파벳
        var result = 0

        for char in s {
            let index = Int(char.asciiValue! - 97)  // 'a'의 ASCII 값은 97이므로 'a'를 0부터 시작

            // 현재 문자의 최대 길이를 찾기 위해 DP 배열을 탐색
            var maxLength = 0
            for i in max(0, index - k)...min(25, index + k) {
                maxLength = max(maxLength, dp[i])
            }

            // DP 배열에서 현재 문자의 최대 길이를 업데이트
            dp[index] = maxLength + 1
            result = max(result, dp[index])  // 최대 길이 갱신
        }

        return result
    }
}

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 1 { return s }  // 문자열이 1개인 경우
        if Set(s).count == 1 { return s }  // 문자열이 모두 같은 알파벳으로 이뤄진 경우

        let sArr = Array(s)
        var maxLength = 1
        var longestPalindrom = String(sArr[0])

        for window in 2...s.count {
            for i in 0...(s.count - window) {
                let substring = checkPalindrome(i, i + window - 1, sArr)
                if substring.count > maxLength {
                    maxLength = substring.count
                    longestPalindrom = substring
                    break
                }
            }
        }

        return longestPalindrom
    }

    func checkPalindrome(_ left: Int, _ right: Int, _ arr: [Character]) -> String {
        var l = left
        var r = right

        while l < r {
            if arr[l] != arr[r] {
                return ""
            }
            l += 1
            r -= 1
        }

        return String(arr[left...right])
    }
}

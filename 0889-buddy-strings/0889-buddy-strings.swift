class Solution {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        let sL = s.count
        let gL = goal.count

        // 문자 길이가 다르면 false
        if sL != gL { return false }
        
        // 문자열 배열화
        var s2 = Array(s)
        var g2 = Array(goal)
        
        // 글자가 다른 인덱스를 저장할 배열
        var buffer = [Int]()
        
        // 문자열을 순회하면서 다른 문자열을 가진 인덱스를 구함
        for i in 0..<sL {
            if s2[i] != g2[i] {
                buffer.append(i)
            }
        }

        // 두 문자열이 같을 경우: 중복된 문자가 있는지 확인
        if buffer.isEmpty {
            // 문자열 내에 중복된 문자가 있으면 교환 가능
            let uniqueSet = Set(s2)
            return uniqueSet.count < sL
        }

        // 다른 문자열의 위치가 2개가 아니면 교환 불가이므로 false
        if buffer.count != 2 {
            return false
        }   

        // 교환 후 동일한지 확인
        return s2[buffer[0]] == g2[buffer[1]] && s2[buffer[1]] == g2[buffer[0]]
    }
}

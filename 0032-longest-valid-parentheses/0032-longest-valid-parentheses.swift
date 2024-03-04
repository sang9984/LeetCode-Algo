class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        // 스택은 인덱스를 저장하는 용도로 사용한다
        // 스택에는 '(' 과 ')' 와 같은 문자를 저장하지 않는다
        // 스택에 들어가는 문자는 '('과 ')' 둘 뿐이므로 if, else를 하나씩만 이용해서 예외처리한다
        // "(" 가 들어간 경우를 제외하면 ') 밖에 없음을 기억한다
        // 만약 ')'이 들어왔을때 스택이 비어있으면 정상적인 괄호쌍이 끊어진 것이므로 여기에서 기록을 멈춘다
        // 만약 ')'이 들어올때 스택이 비어있지 않으면 스택의 맨위는 당연히 '('이므로 정상적인 괄호쌍이 완성되므로 가장 최근의 '(' 인덱스를 제거하고 길이를 갱신한다

        var longest = 0
        var stack = [Int]()
        var start = -1

        for (i, char) in s.enumerated() {
            if char == "(" {
                stack.append(i)
            }else {
                if stack.isEmpty {
                    start = i
                }else {
                    stack.removeLast()

                    if stack.isEmpty {
                        // 스택이 비어있으면 정상적인 괄호쌍이 끓김 없이 이어짐을 의미하므로 시작지점부터 현재까지 길이 측정
                        longest = max(longest, i - start)
                    }else {
                        // 스택이 비어있지 않으면 정상적인 괄호쌍이 끓긴 순간이 있으므로 정상 괄호쌍이 끓긴 지점부터 현재까지 길이 측정
                        longest = max(longest, i - stack.last!)
                    }
                }
            }
        }
        return longest
    }
}
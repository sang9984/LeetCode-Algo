class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        if chars.count == 1 {return 1}
        var buffer = [Character]()
        var start = chars[0]
        var count = 1

        for i in 1..<chars.count {
            if start == chars[i] {
                count += 1
            }else {
                buffer.append(start)
                if count != 1 {buffer += String(count).map{$0}}
                start = chars[i]
                count = 1
            }
        }
        buffer.append(start)
        if count != 1 {buffer += String(count).map{$0}}

        chars = buffer
        return chars.count
    }
}
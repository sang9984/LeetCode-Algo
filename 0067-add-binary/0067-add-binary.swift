class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var stack = [String]()
        var carry = 0
        var aString = Array(a)
        var bString = Array(b)

        while !aString.isEmpty || !bString.isEmpty {
            var sum = carry

            if !aString.isEmpty {
                let aTop = aString.removeLast()
                sum += Int(String(aTop))!
            }

            if !bString.isEmpty {
                let bTop = bString.removeLast()
                sum += Int(String(bTop))!
            }
            
            carry = sum / 2
            stack.append(String(sum % 2))
        }
        
        if carry > 0 {
            stack.append(String(carry))
        }
        return String(stack.joined().reversed())
    }
}

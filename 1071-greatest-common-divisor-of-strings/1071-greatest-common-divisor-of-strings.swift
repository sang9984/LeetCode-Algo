class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else {return ""}
        return String(str1.prefix(gcd(str1.count, str2.count)))
    }

    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        }else {
            return gcd(y, x % y)
        }
    }
}
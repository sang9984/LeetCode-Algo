class Solution {
    func reverse(_ x: Int) -> Int {
        var b = Int(String(String(abs(x)).reversed()))!
        b = x < 0 ? -b : b
        if (Int32.max) > b && (Int32.min) < b {return b}
        return 0
    }
}
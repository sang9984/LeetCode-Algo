class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 }
        
        let lenNeedle = needle.count
        let lenHaystack = haystack.count
        
        if lenNeedle > lenHaystack { return -1 }
        
        let haystackArray = Array(haystack)
        let needleArray = Array(needle)
        
        for i in 0..<(lenHaystack - lenNeedle + 1) {
            if Array(haystackArray[i..<(i + lenNeedle)]) == needleArray {
                return i
            }
        }
        return -1
    }
}

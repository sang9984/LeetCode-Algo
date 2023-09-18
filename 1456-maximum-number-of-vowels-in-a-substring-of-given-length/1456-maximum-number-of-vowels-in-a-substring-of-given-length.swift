class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let ss = Array(s)
        var count = 0
        var result = 0

        for i in 0..<k {
            if vowels.contains(ss[i]) {
                count += 1
            }
        }
        result = count

        for i in 1..<s.count - k + 1 {
            if vowels.contains(ss[i - 1]) { 
                count -= 1
            }
            if vowels.contains(ss[i + k - 1]) {
                count += 1
            }
            result = max(result, count)
        }

        return result
    }
}

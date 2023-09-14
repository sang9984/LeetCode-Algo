class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels = Set(["a","e","i","o","u","A","E","I","O","U"])
        var stack = [String]()
        var sArr = s.map{String($0)}
        
        for i in sArr {
            if vowels.contains(i) {stack.append(i)}
        }

        for j in 0..<sArr.count {
            if vowels.contains(sArr[j]) {sArr[j] = stack.removeLast()}
        }

        return sArr.joined()
    }
}
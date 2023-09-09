class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var hash = [Character: Int]()

        for char in s {
            if let count = hash[char] {
                hash[char] = count + 1
            } else {
                hash[char] = 1
            }
        }

        for (index, char) in s.enumerated() {
            if hash[char] == 1 {
                return index
            }
        }

        return -1
    }
}

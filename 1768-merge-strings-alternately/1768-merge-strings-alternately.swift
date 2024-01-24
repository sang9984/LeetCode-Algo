class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""
        let word1 = Array(word1)
        let word2 = Array(word2)

        for i in 0..<max(word1.count, word2.count)  {
            if i < word1.count{
                result += String(word1[i])
            }

            if i < word2.count{
                result += String(word2[i])
            }
        }

        return result
    }
}
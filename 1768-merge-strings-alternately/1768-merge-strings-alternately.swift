class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""
        let w1 = Array(word1)
        let w2 = Array(word2)
        var pointer1 = 0
        var pointer2 = 0

        while pointer1 < w1.count || pointer2 < w2.count {
            if pointer1 < w1.count {
                result += String(w1[pointer1])
                pointer1 += 1
            }
            
            if pointer2 < w2.count {
                result += String(w2[pointer2])
                pointer2 += 1
            }
        }
        return result
    }
}

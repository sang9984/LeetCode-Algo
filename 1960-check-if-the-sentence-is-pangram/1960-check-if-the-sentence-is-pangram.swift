class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        return Set(sentence).count == 26
    }
}
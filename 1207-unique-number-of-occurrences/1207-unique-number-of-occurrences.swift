class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var hash = [Int:Int]()
        var counts = Set<Int>()

        for i in arr {
            if hash[i] == nil {
                hash[i] = 1
            }else {hash[i]! += 1}
        }

        for (i,j) in hash {
            if counts.contains(j){
                return false
            }
            counts.insert(j)
        }
        return true
    }
}
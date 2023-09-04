class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let strBuffer = strs.sorted()
        var hash = [String:[String]]()
        
        for i in strBuffer {
            let sortString = String(i.sorted())

            if hash[sortString] != nil {
                hash[sortString]!.append(i)
            } else {
                hash[sortString] = [i]
            }
        }
        return Array(hash.values)
    }
}
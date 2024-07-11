class Solution {
    func canBeEqual(_ s1: String, _ s2: String) -> Bool {
        var arr1 = Array(s1)
        var arr2 = Array(s2)

        var p1 = 0
        var p2 = 2

        for _ in 0..<2 {
            if ((arr1[p1] != arr2[p1]) || (arr1[p2] != arr2[p2])) {
                arr1.swapAt(p1, p2)
            } 
            p1 += 1
            p2 += 1
        }

        return arr1 == arr2
    }
}
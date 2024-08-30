import Foundation

class Solution {
    func kthSmallest(_ mat: [[Int]], _ k: Int) -> Int {
        let m = mat.count
        var currentSums = [0] // 초기 합은 0
        
        for row in mat {
            var newSums = [Int]()
            
            for sum in currentSums {
                for element in row {
                    newSums.append(sum + element)
                }
            }
            
            // k번째 작은 합까지만 유지 (나머지는 버림)
            newSums.sort()
            currentSums = Array(newSums.prefix(k))
        }
        
        return currentSums[k-1]
    }
}

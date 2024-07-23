class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        var result = [Int]()

        for i in nums{
            if dict[i] == nil {
                dict[i] = 1
            }else {
                dict[i]! += 1
            }
        }
        
        let sortedKeys = dict.keys.sorted {
            if dict[$0]! == dict[$1]! {
                return $0 > $1 
            } else {
                return dict[$0]! < dict[$1]! 
            }
        }

        for key in sortedKeys {
            for _ in 0..<dict[key]! {
                result.append(key)
            }
        }

        return result
    }
}
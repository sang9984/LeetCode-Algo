class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {return s}
        var hash = [Int:String]()
        var result = ""
        for i in 1...numRows {
            hash[i] = ""
        }

        var down = true
        var rowChecker = 1
        for c in s.map{String($0)} {
            if down {
                hash[rowChecker]! += c
                rowChecker += 1
                
                if rowChecker == numRows {
                    down = false
                }
                
            }else if !down {
                hash[rowChecker]! += c
                rowChecker -= 1

                if rowChecker == 1 {
                    down = true
                }
            }
        }

        for (i,j) in hash.sorted(by: {$0.key < $1.key}) {
            result += j
        }

        return result
    }
}
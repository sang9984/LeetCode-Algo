class Solution {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
        var result = 0
        
        for i in low...high where String(i).count % 2 == 0{
            let s = String(i).map{Int(String($0))!}
            var sum1 = 0
            var sum2 = 0

            for j in 0..<s.count/2{
                sum1 += s[j]
            }
            for m in s.count/2..<s.count {
                sum2 += s[m]
            }

            if sum1 == sum2 {result += 1}
        }
        return result
    }
}
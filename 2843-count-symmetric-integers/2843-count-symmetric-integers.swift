class Solution {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
        var result = 0
        
        for i in low...high where String(i).count % 2 == 0{
            let s = String(i).map{Int(String($0))!}
            var sum1 = 0
            var sum2 = 0

            for (index,value) in s.enumerated() {
                if index < s.count/2 {
                    sum1 += s[index]
                }else {
                    sum2 += s[index]
                }
            }
            if sum1 == sum2 {result += 1}
        }
        return result
    }
}
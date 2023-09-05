class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var start = 0
        var end = height.count - 1
        var result = 0
    
        while start != end {
            let width = end - start
            let height1 = min(height[start], height[end])
            let water = width * height1

            if water > result {
                result = water
            }

            if height[start] > height[end] {
                end -= 1
            }else {
                start += 1
            }
            
        }
        return result
    }
}
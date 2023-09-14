class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.isEmpty {
            return 0
        }

        var left = 0
        var right = height.count - 1
        var maxLeft = height[left]
        var maxRight = height[right]
        var result = 0

        while left < right {
            if height[left] < height[right] {
                if height[left] > maxLeft {
                    maxLeft = height[left]
                } else {
                    result += maxLeft - height[left]
                }
                left += 1
            } else {
                if height[right] > maxRight {
                    maxRight = height[right]
                } else {
                    result += maxRight - height[right]
                }
                right -= 1
            }
        }

        return result
    }
}

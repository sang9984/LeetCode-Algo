class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()

        for asteroid in asteroids {
            if asteroid > 0 {
                stack.append(asteroid)
            } else {
                while !stack.isEmpty && stack.last! > 0 && stack.last! < abs(asteroid) {
                    stack.removeLast()
                }
                if stack.isEmpty || stack.last! < 0 {
                    stack.append(asteroid)
                } else if stack.last! == abs(asteroid) {
                    stack.removeLast()  // same size asteroid will destroy each other
                }
            }
        }

        return stack
    }
}

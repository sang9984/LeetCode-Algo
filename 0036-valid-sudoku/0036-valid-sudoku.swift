class Solution {
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        for i in 0..<9 {
            var a = Set<Character>()
            
            for j in 0..<9 {
                if board[i][j] != "."{
                    if a.contains(board[i][j]) {
                        return false
                        break
                    }
                    a.insert(board[i][j])
                }    
            }
        }
        
        for m in 0..<9 {
            var b = Set<Character>()
            
            for n in 0..<9 {
                if board[n][m] != "."{
                    if b.contains(board[n][m]) {
                        return false
                        break
                    }
                    b.insert(board[n][m])
                }    
            }
        }

        
        for x in 0 ..< 9 {
            var set = Set<Character>()
            for y in x / 3 * 3 ..< x / 3 * 3 + 3 {
                for z in x % 3 * 3 ..< x % 3 * 3 + 3 {
                    if board[y][z] != ".", set.contains(board[y][z]) {
                        return false
                    }
                    set.insert(board[y][z])
                }
            }
        }

        return true
    }
}
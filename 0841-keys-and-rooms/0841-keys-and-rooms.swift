class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var visited = Set([0])
        var keyStack = rooms[0]
        while !keyStack.isEmpty {
            let room = keyStack.removeLast()
            if !visited.contains(room) {
                visited.insert(room)
                keyStack += rooms[room] ?? []
            }
        }

        for i in 1..<rooms.count {
            if !visited.contains(i) {
                return false
            }
        }

        return true
    }
}
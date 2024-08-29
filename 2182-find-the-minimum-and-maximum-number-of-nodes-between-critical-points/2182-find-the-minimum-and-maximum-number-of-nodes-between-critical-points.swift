/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func nodesBetweenCriticalPoints(_ head: ListNode?) -> [Int] {
        var maxDistance = 0 // maxDistance를 기록하기 위한 변수
        var minDistance = Int.max // minDistance를 기록하기 위한 변수
        var position = [Int]() // critical point를 저장할 배열
        var preNode = head
        guard var current = head?.next else {
            return [-1,-1]
        }
        var counter = 1 // 인덱스 기록 변수

        while let nextNode = current.next {
            // Critical point 확인
            if (preNode!.val > current.val && nextNode.val > current.val) || 
               (preNode!.val < current.val && nextNode.val < current.val) {
                position.append(counter)
            }

            // 이동
            preNode = current
            current = nextNode
            counter += 1
        }
        if position.count < 2 {
            return [-1, -1]
        }

        for i in 1..<position.count {    
            minDistance = min(position[i] - position[i - 1], minDistance)
        }

        maxDistance = position[position.count - 1] - position[0]

        return [minDistance, maxDistance]
    }
}
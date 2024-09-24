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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        // 빈 리스트인 경우 바로 반환
        guard head != nil else { return nil }
        
        // 첫 번째 순회: 각 값의 개수를 세기 위한 딕셔너리
        var dict = [Int: Int]()
        var current = head
        
        while current != nil {
            let value = current!.val
            if let count = dict[value] {
                dict[value] = count + 1
            } else {
                dict[value] = 1
            }
            current = current?.next
        }
        
        // 두 번째 순회: 중복된 값을 가진 노드를 제거
        // 더미 노드를 사용하여 헤드 노드가 제거될 경우를 처리
        let dummy = ListNode(0)
        dummy.next = head
        var prev: ListNode? = dummy
        current = head
        
        while current != nil {
            let value = current!.val
            if let count = dict[value], count > 1 {
                // 중복된 값인 경우 노드 제거
                prev?.next = current?.next
            } else {
                // 중복되지 않은 경우 prev를 현재 노드로 이동
                prev = current
            }
            current = current?.next
        }
        
        return dummy.next
    }
}
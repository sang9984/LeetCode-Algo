class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head = head else { return nil } 
        if head.next == nil || k == 0 { return head } 
        
        var length = 1
        var tail = head
        while tail.next != nil {
            tail = tail.next!
            length += 1
        }
        
        tail.next = head
        
        let rotations = k % length
        var newTailPosition = length - rotations
        var newTail = head
        for _ in 1..<newTailPosition {
            newTail = newTail.next!
        }

        let newHead = newTail.next
        newTail.next = nil
        
        return newHead
    }
}

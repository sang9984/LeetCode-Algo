# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        dummy = ListNode(0)
        dummy.next = head

        current = head
        count = 0
        while current:
            count += 1
            current = current.next

        position_to_remove = count - n

        current = dummy
        for _ in range(position_to_remove):
            current = current.next

        current.next = current.next.next

        return dummy.next

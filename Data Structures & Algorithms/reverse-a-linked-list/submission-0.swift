/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var tail: ListNode? = nil
        var temp = head
        var current = head

        while current != nil {
            temp = temp!.next
            current!.next = tail
            tail = current
            current = temp
        }
        return tail
    }
}

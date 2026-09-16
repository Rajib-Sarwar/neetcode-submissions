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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list1 = list1
        var list2 = list2
        var head = ListNode( -1)
        var temp: ListNode? = head 

        while list1 != nil && list2 != nil {
            if list1!.val <= list2!.val {
                temp!.next = list1
                temp = temp!.next
                list1 = list1!.next
            } else {
                temp!.next = list2
                temp = temp!.next
                list2 = list2!.next
            }
        }

        if list1 == nil { temp!.next = list2 }
        if list2 == nil { temp!.next = list1 }

        return head.next
    }
}

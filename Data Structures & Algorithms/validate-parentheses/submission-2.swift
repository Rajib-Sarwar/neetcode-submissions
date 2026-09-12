class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()

        var map = [String:String]()
        map[")"] = "("
        map["}"] = "{"
        map["]"] = "["

        for c in s {
            if stack.isEmpty  {
                stack.append(String(c))
                continue
            } 

            if map[String(c)] == stack.last {
                _ = stack.popLast()
                continue
            }
            stack.append(String(c))
        }

        return stack.isEmpty
    }
}

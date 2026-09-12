class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        for c in s {
            if c == "(" || c == "{" || c == "["  {
                stack.append(String(c))
            } else {
                if stack.isEmpty { return false }
                if stack.last! == "(" && c == ")" {
                    stack.removeLast()
                } else if stack.last! == "{" && c == "}" {
                    stack.removeLast()
                } else if stack.last! == "[" && c == "]" {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}

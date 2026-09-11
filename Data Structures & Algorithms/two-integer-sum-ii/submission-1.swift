class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var numMap = [Int: Int]()

        for (index, number) in numbers.enumerated() {
            let remain = target - number

            if let found = numMap[remain] {
                return [found + 1, index + 1]
            }
            numMap[number] = index
        }
        return [-1, -1]
    }
}

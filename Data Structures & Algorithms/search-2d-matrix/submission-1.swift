class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var row = 0
        var col = matrix[0].count - 1

        while row < matrix.count && col >= 0 {
            if matrix[row][col] == target {
                return true
            } else if target > matrix[row][col] {
                row += 1
            } else {
                col -= 1
            }
        }

        return false
    }
}

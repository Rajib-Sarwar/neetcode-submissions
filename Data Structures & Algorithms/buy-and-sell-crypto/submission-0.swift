class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = Int.max
        var benefit = 0
        for price in prices {
            if price < buy {
                buy = price
            } else {
                benefit = max(benefit, price - buy)
            }
        }
        return benefit
    }
}

class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var low = 1
        var high = piles.max()!

        var rate = 0
        while low < high {
            rate = low + (high - low) / 2
            let time = minEat(rate, piles)
            if time > h {
                low = rate + 1
            } else {
                high = rate
            }
        }
        return high
    }

    func minEat(_ rate: Int, _ piles: [Int]) -> Int {
        var count = 0
        for pile in piles {
            count += (rate + pile - 1)/rate
        }

        return count
    }
}

class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        let cars = zip(position, speed).sorted { $0.0 > $1.0 }
        
        var reach = [Double]()
        for (p, s) in cars {
            reach.append(Double(target - p) / Double(s))
        }
        // print(cars)
        // print(reach)
        var stack = [Double]()
        for r in reach {
            if stack.isEmpty || r > stack.last! {
                stack.append(r)
            }
        }

        return stack.count
    }
}

class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        let cars = zip(position, speed).sorted { $0.0 > $1.0 }
        
        var slowest = 0.0
        var fleet = 0
        for (p, s) in cars {
            let time = Double(target - p) / Double(s)

            if time > slowest {
                fleet += 1
                slowest = time
            }
        }
        
        

        return fleet
    }
}

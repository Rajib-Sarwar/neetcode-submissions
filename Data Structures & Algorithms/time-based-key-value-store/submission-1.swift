class TimeMap {
    var map: [Int: [String:String]]
    init() {
        map = [Int: [String:String]]()
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        map[timestamp] = [key: value]
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        var time = timestamp
        while time >= 0 {
           if let mapVal = map[time], let value = mapVal[key] {
                return value 
           }
           time -= 1
        }

        return ""
    }
}

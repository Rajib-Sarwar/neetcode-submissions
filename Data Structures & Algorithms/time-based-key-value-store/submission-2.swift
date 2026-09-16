class TimeMap {
    var map: [String: [(String, Int)]]
    init() {
        map = [String: [(String, Int)]]()
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        map[key, default: []].append((value, timestamp))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let timestamps = map[key] else { return "" }

        var left = 0
        var right = timestamps.count - 1
        var result = ""

        while left <= right {
            let mid = left + (right - left)/2

            if timestamps[mid].1 <= timestamp {
                result = timestamps[mid].0
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return result
    }
}

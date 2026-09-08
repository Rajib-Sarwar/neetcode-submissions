class MyHashMap {
    var items: [Int]

    init() {
        items = Array(repeating: -1, count: 1_000_001)
    }

    func put(_ key: Int, _ value: Int) {
        items[key] = value
    }

    func get(_ key: Int) -> Int {
        return items[key]
    }

    func remove(_ key: Int) {
        items[key] = -1
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */

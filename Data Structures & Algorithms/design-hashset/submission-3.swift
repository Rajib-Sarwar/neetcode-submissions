class MyHashSet {
    var items: [Int]

    init() {
        items = Array(repeating: 0, count: 1_000_001)
    }

    func add(_ key: Int) {
        items[key] = 1
    }

    func remove(_ key: Int) {
        items[key] = 0
    }

    func contains(_ key: Int) -> Bool {
        return items[key] == 1 ? true : false
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */

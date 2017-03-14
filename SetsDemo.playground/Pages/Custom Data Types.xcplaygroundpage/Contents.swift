/**
 Custom Data Types in Sets
 */


struct Person: Hashable {
    var name: String
    var age: Int
    
    public static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    var hashValue: Int {
        get {
            return "\(name),\(age)".hashValue
        }
    }
}

let joel = Person(name: "Joel", age: 29)
let frank = Person(name: "William", age: 35)
let billybob = Person(name: "Billy Bob", age: 43)
let charles = Person(name: "Charles", age: 46)

var set: Set = [joel, frank, billybob, charles]


set.contains(Person(name: "Joel", age: 29))
set.contains(Person(name: "joel", age: 29))
set.contains(Person(name: "Joel", age: 30))



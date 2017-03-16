/**
 Custom Data Types in Sets
 */


class Person: Hashable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    public static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    var hashValue: Int {
        get {
            return "\(name),\(age)".hashValue
        }
    }
}

var joel = Person(name: "Joel", age: 29)
var joel2 = joel

joel.name = "Frank"

joel.name
joel2.name

let frank = Person(name: "William", age: 35)
let billybob = Person(name: "Billy Bob", age: 43)
let charles = Person(name: "Charles", age: 46)

var set: Set = [joel, frank, billybob, charles]

set.contains(Person(name: "Joel", age: 29))
set.contains(Person(name: "joel", age: 29))
set.contains(Person(name: "Joel", age: 30))





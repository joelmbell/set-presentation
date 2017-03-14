/**
 Basic Data Structures in Swift Standard Library
 */


/*-------------------------------------------
 |                                          |
 |               Arrays                     |
 |                                          |
 -------------------------------------------- */
var longWayToCreateAnArray: Array<String> = Array() // Not recommended

var mutableArray = [String]() // Shorthand
mutableArray.append("Joel")
mutableArray.append("Frank")
mutableArray.append("Billy Bob")
mutableArray.count

let immutableArray = ["Bob", "Frank", "Lisa"]
// immutableArray.append("Josh") -- Error




/*-------------------------------------------
 |                                          |
 |               Dictionaries               |
 |                                          |
 -------------------------------------------- */

var longWayToCreateADictionary: [String: Int] = Dictionary() // Not Recommended

var mutableAges = [String: Int]() // shorthand
mutableAges["Joel"] = 29
mutableAges["Frank"] = 50
mutableAges["Lisa"] = 20
mutableAges.count

let immutableAges = ["Joel": 29, "Frank": 50, "Lisa": 20]
//immutableAges["Billy Bob"] = 60 -- Error




/*-------------------------------------------
 |                                          |
 |                  Sets                    |
 |                                          |
 -------------------------------------------- */
var longWayToCreateASet: Set<String> = Set() // Not Recommended

var mutableFruit = Set<String>()

// Insert returns a tuple (inserted, memberAfterInsert)
mutableFruit.insert("Pear")
mutableFruit.insert("Pineapple")
mutableFruit.insert("Orange")
mutableFruit.insert("Grape")
let inserted = mutableFruit.insert("Grape").0 // false
let removed = mutableFruit.remove("Grape") // Grape
mutableFruit

// You must specify the type, otherwise it will assume an array.
let immutableFrut: Set = ["Pear", "Pineapple", "Orange", "Grape"]




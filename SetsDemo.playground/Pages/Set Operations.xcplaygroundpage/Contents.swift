/**
 Set Operations
 */


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]


let houseAnimals: Set = ["dog", "cat", "Iguana"]
let farmAnimals: Set = ["cow", "horse", "sheep", "pig", "dog", "cat"]
let cityAnimals: Set = ["pigeon", "mouse"]


/*
 Union
 
 Create a new set with elements from two sets. (removes duplicates)
 */
let allSingleDigits = oddDigits.union(evenDigits)
let allAnimals = houseAnimals.union(farmAnimals).union(cityAnimals)

/*
 Intersection
 
 Creates a new set with only the values common to both sides.
 */
let emptySet = oddDigits.intersection(evenDigits)
let animalsAvailableOnAFarmOrAHouse = houseAnimals.intersection(farmAnimals)


/*
 Symmetric Difference
 
 Creates a new Set with values in either set, but not both.
 */
let symmetricDifference = oddDigits.symmetricDifference(singleDigitPrimeNumbers)
let animalsInEitherAHouseOrAFarmButNotBoth = farmAnimals.symmetricDifference(houseAnimals)


/*
 Subtracting
 
 Creates a new set with values not in the specified set.
 */
let oddsThatArentPrime = oddDigits.subtracting(singleDigitPrimeNumbers)
let animalsOnAFarmButNotAHouse = farmAnimals.subtracting(houseAnimals)
let animalsInAHouseButNotAFarm = houseAnimals.subtracting(farmAnimals)



/*
 Other Set Operations
 */

/*
 isSubset(of:)
 
 If one set is a contained within another Set
 */
oddsThatArentPrime.isSubset(of: oddDigits) // true
houseAnimals.isSubset(of: farmAnimals) // false because Iguana

/*
 isSuperSet(of:)
 
 If one set contains entirely another set
 */
oddDigits.isSuperset(of: oddsThatArentPrime) // true

/*
 isStrictSubset(of:)
 isStrictSuperSet(of:)
 
 Strict means that it is false if they contain the same items
 */
oddsThatArentPrime.isSubset(of: oddsThatArentPrime) // true
oddsThatArentPrime.isStrictSubset(of: oddsThatArentPrime) // false

oddsThatArentPrime.isSuperset(of: oddsThatArentPrime) // true
oddsThatArentPrime.isStrictSuperset(of: oddsThatArentPrime) // false

/*
 isDisjoint(with:)
 
 If a Set has NO element in common with another Set
 */
farmAnimals.isDisjoint(with: houseAnimals) // false
oddDigits.isDisjoint(with: evenDigits) // true


/*
 Set operations with Sequence's and Collections!
 */





// Collection Operations
emptySet.isEmpty // true
oddDigits.count // 5
oddDigits.first // Unordered so not that helpful.
//etc...


// Squence Operations (Collection conforms to Sequence)

// reduce
let oddDigitsSum = oddDigits.reduce(0) { (acc, item) -> Int in
    return acc + item
}

// map
let oddTurnedEven = oddDigits.map { $0 + 1 }
oddTurnedEven

// for in
var backToOdd = Set<Int>()
for num in oddTurnedEven {
    let newNum = num - 1
    backToOdd.insert(newNum)
}
backToOdd


oddDigits.isSubset(of: 0...10) // True
allSingleDigits.isSubset(of: 0..<10)
allSingleDigits.isStrictSubset(of: 0..<10) // false, they are the same!

allSingleDigits.subtracting(0...3)
allSingleDigits.subtracting([0, 5, 8, 9, 1, 3])


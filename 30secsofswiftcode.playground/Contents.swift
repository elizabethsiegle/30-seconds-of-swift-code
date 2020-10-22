import UIKit

//bubblesort
func bubbleSort(_ inputArr:[Int]) -> [Int] {
    guard inputArr.count > 1 else {
        return inputArr
    }
    var res = inputArr
    let count = res.count
    var isSwapped = false
    repeat {
        isSwapped = false
        for index in stride(from: 1, to: count, by: 1) {
            if res[index] < res[index - 1] {
                res.swapAt((index - 1), index)
                isSwapped = true
            }
        }
    } while isSwapped
    return res
}
bubbleSort([32,12,12,23,11,19,81,76]) //[11, 12, 12, 19, 23, 32, 76, 81]

//filterBools: remove every value that's not a Boolean
func filterBools(_ inputArr: [Any]) -> [Any] {
    return inputArr.compactMap { $0 as? Bool }
    
}
filterBools([false, 2, "lol", 3, "a", "s", 34, false, true]) //[false, false, true]

//break array into multiple arrays of a certain size
func chunk(arr: [Any], chunkSize: Int) -> [Any] {
    let chunks = stride(from: 0, to: arr.count, by: chunkSize).map {
        Array(arr[$0..<min($0 + chunkSize, arr.count)])
    }
    return chunks
}
chunk(arr: [2, 4, 6, 8], chunkSize: 1) //[[2], [4], [6], [8]]
chunk(arr: [1, 3, 5, 9], chunkSize: 4) //[[1, 3, 5, 9]]
chunk(arr: ["hi", "yo", "bye", "bai"], chunkSize: 3) //[["hi", "yo", "bye"], ["bai"]]
chunk(arr: ["young", "scrappy", "hungry"], chunkSize: 2) //[["young", "scrappy"], ["hungry"]]

// everyNth - returns every nth element in a list
func getEvery( nth: Int, from list: [Any] ) {
    var nthElements = [Any]()
    var shiftedList = list
    shiftedList.insert(0, at: 0)
    
    for (i, element) in shiftedList.enumerated() {
        if i > 0 && i.isMultiple(of: nth) {
            nthElements.append(element)
            print(nthElements)
        }
    }
}
getEvery(nth: 4, from: ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"])
getEvery(nth: 2, from: [1,2,3,4,5,6,7,8,9])


//count occurrences of a string in an array
func countOccurrences(arr: [String], into: String) -> Int {
    return arr.reduce(0) { $1 == into ? $0 + 1 : $0 }
}
countOccurrences(arr: ["FOO", "FOO", "BAR"], into: "FOO") //2

//flatten array of Int arrays into 1 array
func deepFlatten(arr: [AnyHashable]) -> [AnyHashable] {
    var arr2 = [AnyHashable]()
    for el in arr {
        if let el = el as? Int {
            arr2.append(el)
        }
        if let el = el as? [Any] {
            let res = deepFlatten(arr: el as! [AnyHashable])
            for i in res {
                arr2.append(i)
            }
        }
    }
    return arr2
}
deepFlatten(arr: [6, 5, 4, [3, 2], [1]]) //[6, 5, 4, 3, 2, 1]

//return element(s) not contained in both of the given arrays
func difference(arr1: [AnyHashable], arr2: [AnyHashable]) -> Set<AnyHashable> {
    return Set(arr1).symmetricDifference(arr2)
}
difference(arr1: [2, 4, 6, 8], arr2: [10, 8, 6, 4, 2, 0]) //10
difference(arr1: ["mulan", "moana", "belle", "elsa"], arr2: ["mulan", "moana", "belle", "pocahontas"]) //elsa, pocahontas

//check for duplicate elements in array
func duplicates(arr1: [AnyHashable]) -> Bool {
    return arr1.count != (Set<AnyHashable>(arr1)).count
}
duplicates(arr1: [5, 4, 3, 2]) //false
duplicates(arr1: ["hermione", "hermione", "ron", "harry"]) //true

//inspired by RW https://github.com/raywenderlich/swift-algorithm-club/tree/master/Insertion%20Sort
func insertionSort(_ array: [Int]) -> [Int] {
    var a = array             // 1
    for index in stride(from: 1, to: a.count, by: 1)  {
        var y = index
        while y > 0 && a[y] < a[y - 1] { // 3
            a.swapAt(y - 1, y)
            y -= 1
        }
    }
    return a
}
let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list) //[-1, 0, 1, 2, 3, 3, 5, 8, 9, 10, 26, 27]

//Using Swift Standard Library Sort
// Link to Official Apple Developer Documentation - https://developer.apple.com/documentation/swift/array/1688499-sort
var integerArray = [5,8,2,3,656,9,1]
var stringArray = ["India", "Norway", "France", "Canada", "Italy"]
integerArray.sort() //[1, 2, 3, 5, 8, 9, 656]
stringArray.sort() //["Canada", "France", "India", "Italy", "Norway"]

//fisher-yates shuffle
func shuffle(arr1: [AnyHashable]) -> [AnyHashable] {
    var arr2 = arr1
    for i in stride(from: arr1.count - 1, through: 1, by: -1) {
        let j = Int.random(in: 0...i)
        if i != j {
            arr2.swapAt(i, j)
        }
    }
    return arr2
}
var foo = [1,2,3]
shuffle(arr1: foo) //[2,3,1] , foo = [1,2,3]

//median
func calcMedian(arr: [Int]) -> Float {
    return Float(arr.sorted(by: <)[arr.count / 2])
}
calcMedian(arr: [1,2,3,4,5,6,7,8]) //returns 5, should return 4.5

//better median
func calcBetterMedian(arr: [Int]) -> Float {
    let sorted = arr.sorted()
    if sorted.count % 2 == 0 {
        return Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
    }
    return Float(sorted[(sorted.count - 1) / 2])
}
calcBetterMedian(arr: [1,2,3,4,5,6,7,8]) //returns 4.5

//average
func average(arr: [Double]) -> Double {
    return arr.reduce(0, +)/Double(arr.count)
}
average(arr: [5, 4, 3, 2, 1]) //3

//factorial
func factorial(num: Int) -> Int {
    var fact: Int = 1
    for index in stride(from: 1, to: num+1, by: 1) {
        fact = fact * index
    }
    return fact
}
factorial(num: 4) //24
factorial(num: 10) //3628800

//gcd
func gcd(num1: Int, num2: Int) -> Int {
    let mod = num1 % num2
    if mod != 0 {
        return gcd(num1: num2, num2: mod)
    }
    return num2
}
gcd(num1: 228, num2: 36) //12
gcd(num1: -5, num2: -10)

//lcm: least common multiple between two integers using gcd function above
func lcm1(num1: Int, num2: Int) -> Int {
    return abs(num1 * num2) / gcd(num1: num1, num2: num2)
}
lcm1(num1: 12, num2: 7) //84

//least common multiple of an array using the first lcm
func lcm2(arr1: [Int]) -> Int {
    return arr1.reduce(1) { lcm1(num1: $0, num2: $1) }
}
lcm2(arr1: [4, 3, 2]) //12

//max
func maxn(arr1: [Int]) -> Int {
    if let (_, maxValue) = arr1.enumerated().max(by: { $0.element < $1.element }) {
        return maxValue
    }
    return 0
}
maxn(arr1: [2, 9, 5])
[2, 9, 5].max() //9

//rewrite min function
func minn(arr1: [Int]) -> Int {
    var minVal = arr1[0]
    for num in arr1 {
        minVal = (num  < minVal) ? num : minVal
    }
    return minVal
}
minn(arr1: [8, 2, 4, 6]) //2
[8, 2, 4, 6].min() //2

//all_unique: Checks a flat list for all unique values. Returns True if list values are all unique and False if list values aren't all unique.
func allUnique(arr: [AnyHashable]) -> Bool {
    return arr.count == Set<AnyHashable>(arr).count
}
allUnique(arr: [5, 4, 3, 2])
allUnique(arr: ["lol", "rofl", "lol"])

//return keys of a dictionary
func justKeys(dict: Dictionary<AnyHashable, AnyHashable>) -> [AnyHashable] {
    return Array(dict.keys)
}

var dict: Dictionary<String, String> = ["Mulan": "Mushu", "Anna": "Olaf", "Pocahontas": "Fleeko"]
justKeys(dict: dict) //[Anna, Mulan, Pocahontas]

//return values of a dictionary
func justValues(dict: Dictionary<AnyHashable, AnyHashable>) -> [AnyHashable] {
    return Array(dict.values)
}
justValues(dict: dict) //[Olaf, Mushu, Fleeko]

//bytes from string
func bytes(_ str: String) -> Int {
    return str.utf8.count
}
bytes("Hello")

//capitalize first letter of whole string, leaving the rest the same
func capitalizeFirst(str: String) -> String {
    var components = str.components(separatedBy: " ")
    components[0] = components[0].capitalized
    return components.joined(separator: " ")
}
capitalizeFirst(str: "i like cheesE") //I like cheesE

//capitalize first letter of every word in string
func capitalizeEveryWord(str: String) -> String {
    return str.capitalized
}
capitalizeEveryWord(str: "on a scale from 1 to 10 how would you rate your pain")

//return number of vowels in a string
func countVowels(str: String) -> Int {
    var vowelCount = 0
    let vowels = Set(["a", "e", "i", "o", "u"])
    for char in str.lowercased() {
        if vowels.contains("\(char)") {
            vowelCount += 1
        }
    }
    return vowelCount
}
countVowels(str: "hi mom") //2
countVowels(str: "aeiou") //5

//lower-case first letter of the first word
func lowerCaseFirstLetterOfFirstWord(str: String) -> String {
    var components = str.components(separatedBy: " ")
    components[0] = components[0].lowercased()
    return components.joined(separator: " ")
}
lowerCaseFirstLetterOfFirstWord(str: "Christmas Switch was a solid movie") //christmas Switch...

//return true if any character in a string is capitalized
func isLowerCase(str: String) -> Bool {
    return str == str.lowercased()
}
isLowerCase(str: "I LOVE CHRISTMAS") //false
isLowerCase(str: "<3 lol") //true

//check that each character is uppercase
func isUpperCase(str: String) -> Bool {
    return str == str.uppercased()
}
isUpperCase(str: "LOLOLOL") //true
isUpperCase(str: "lmao") //false
isUpperCase(str: "Rofl") //false

//check if input string is a palindrome
func palindrome(str: String) -> Bool {
    return str.lowercased() == String(str.reversed()).lowercased()
}
palindrome(str: "racecar") //true
palindrome(str: "Madam") //true
palindrome(str: "lizzie") //false

/// Return `true` if the 2 given strings are "perfect" anagrams.
/// (they consist of the same characters excluding whitespace)
func anagram(_ str1: String, _ str2: String) -> Bool {
    let s1 = str1.filter { !$0.isWhitespace }.lowercased()
    let s2 = str2.filter { !$0.isWhitespace }.lowercased()
    return s1.count == s2.count && s1.sorted() == s2.sorted()
}

anagram("abcd3", "3acdb") // true
anagram("123", "456") // false
anagram("Buckethead", "Death Cube K") // true

//Returns a new array with n elements removed from the left.
func drop(arr: [AnyHashable], num: Int) -> [AnyHashable] {
    return Array(arr.dropFirst(num)) //need Array() to concert ArraySlice to Array
}

//Returns a new array with n elements removed from the right.
func dropLeft(arr: [AnyHashable], num: Int) -> [AnyHashable] {
    return Array(arr.dropLast(num))
}
drop(arr: [5, 4, 3, 2, 1, 0], num: 1)
drop(arr: ["Huey", "Dewey", "Louie"], num: 3)

func arrayToCSV(_ inputArray: [Array<String>]) -> String {
    var csv: String = ""
    for row in inputArray {
        csv.append(row.map { "\"\($0)\"" } .joined(separator: ", ") + "\n")
    }
    return csv
}
arrayToCSV([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]])
//"a", "b", "c"
//"d", "e", "f"
//"g", "h", "i"

// returns the same function with fliped arguments
func flip<A, B, C>(_ function: @escaping ((A, B) -> C)) -> ((B, A)->C) {
    return { (a, b) in
        return function(b, a)
    }
}

// flip example 1
func concat(_ alpha: String, _ beta: String) -> String {
    return alpha + beta
}

let reverseConcat = flip(concat)
concat("A", "B") //"AB"
reverseConcat("A", "B") //"BA"

// flip example 2
func gt(_ a: Int, _ b: Int) -> Bool {
    return a > b
}

let lt = flip(gt)

gt(5, 3) //true
lt(5, 3) //false
gt(2, 5) //false
lt(2, 5) //true

//Removes elements from the end of an array until the passed function returns true
func dropRight(arr: [Int], while predicate: ((Int) -> Bool)) -> [Int] {
    var returnArr = arr
    for item in arr.reversed() {
        if predicate(item) { break }
        returnArr = returnArr.dropLast()
    }
    return returnArr
}
dropRight(arr: [1, 2, 3, 4, 5], while: { $0 < 0 }) //[]
dropRight(arr: [1, 2, 3, 4, 5], while: { $0 > 0 })//[1, 2, 3, 4, 5]

// Convert an angle from radians to degrees
func radiansToDegrees(_ angle: Double) -> Double {
    return angle * 180 / .pi
}

radiansToDegrees(4) // 229.183

// Returns every nth element from given list.
func everyNth(list: [Any], n: Int) -> [Any] {
    return list.enumerated().compactMap({ ($0.offset + 1) % n == 0 ? $0.element : nil })
}
everyNth(list: [1, 2, 3, 4, 5, 6], n: 2) // [ 2, 4, 6 ]
everyNth(list: ["a", "b", "c", "d", "e", "f"], n: 3) // [ "c", "f" ]

// Returns the given string in snake case.
// based on dmsl1805 https://gist.github.com/dmsl1805/ad9a14b127d0409cf9621dc13d237457
func snake(str: String) -> String? {
    let pattern = "([a-z0-9])([A-Z])"

    let regex = try? NSRegularExpression(pattern: pattern, options: [])
    let range = NSRange(location: 0, length: str.count)
    // Insert "_" between uppercase and lowercase characters
    return regex?.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: "$1_$2")
        .lowercased() // lower case all characters
        .replacingOccurrences(of: " ", with: "_") // replace whitespaces
        .replacingOccurrences(of: "-", with: "_") // replace hyphen
}
snake(str: "camelCase") // 'camel_case'
snake(str: "some text") // 'some_text'
snake(str: "some-mixed_string With spaces_underscores-and-hyphens") // 'some_mixed_string_with_spaces_underscores_and_hyphens'
snake(str: "AllThe-small Things") // "all_the_smal_things"

// Filters out the non-unique values in a list
func filterNonUnique(arr: [Any]) -> [Any] {
    let set = NSOrderedSet(array: arr)
    return set.array
}
filterNonUnique(arr: [1, 2, 2, 3, 5])
filterNonUnique(arr: ["Tim", "Steve", "Tim", "Jony", "Phil"])

//Remove falsey values from an array, values like 0, "", nil and false.
func removeFalseyValues(arr: [Any?]) -> [Any?] {
    return arr.filter({ (value) -> Bool in
        if let strValue = value as? String, strValue == "" {
            return false
        }
        else if let intValue = value as? Int, intValue == 0 {
            return false
        }
        else if let boolValue = value as? Bool, boolValue == false {
            return false
        }
        else if value == nil {
            return false
        }
        else {
            return true
        }
    })
}

var testIntArray = [1,2,3,5,0,1,4]
var newIntArray = removeFalseyValues(arr: testIntArray)
var testStrArray = ["","i","","love","","swift"]
var newStrArray = removeFalseyValues(arr: testStrArray)
var testBoolAndNilArray = [true,true,false,true,nil,true]
var testBoolArray = removeFalseyValues(arr: testBoolAndNilArray)

//Returns 1 if array is sorted in ascending order
//-1 if array is sorted in descending order
//0 if array is not sorted
func isSorted(arr: [Int]) -> Int {
    var asc: Bool = true
    var prev: Int = Int.min
    for elem in arr {
        if elem < prev {
            asc = false
            break
        }
        prev = elem
    }
    if asc {
        return 1
    }
    var dsc: Bool = true
    prev = Int.max
    for elem in arr {
        if elem > prev {
            dsc = false
            break
        }
        prev = elem
    }
    if dsc {
        return -1
    }

    return 0
}
isSorted(arr: [1, 2, 2, 4, 8])
isSorted(arr: [8, 4, 4, 2, 1])
isSorted(arr: [1, 4, 2, 8, 4])

//Returns 1 if array is sorted in ascending order (OPTION 2)
//-1 if array is sorted in descending order
//0 if array is not sorted

func sortedArray (arr: [Int]) -> Int {
    let sortedArr = arr.sorted(by: {$1>$0})
    return arr == sortedArr ? 1 : arr == sortedArr.reversed() ?  -1 :  0
}

//Input sortedArray(arr: [1,2,3,4,5]) - Output 1
//Input sortedArray(arr: [5,4,3,2,1]) - Output -1
//Input sortedArray(arr: [6,2,3,4,8]) - Output 0


// Convert camel case string to snake case:
func camelCaseToSnake(str: String) -> String {
    guard let regex = try? NSRegularExpression(pattern: "([a-z0-9])([A-Z])", options: []) else {
        return str
    }
    let range = NSRange(location: 0, length: str.count)
    return regex.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: "$1_$2").lowercased()
}
camelCaseToSnake(str: "appleIphoneX")
camelCaseToSnake(str: "camelCaseStringToSnakeCase")
camelCaseToSnake(str: "string")
camelCaseToSnake(str: String())
camelCaseToSnake(str: "hacktoberFest🍁☔️🤖")

// Simple_snake_case - Convert a string to snake case
func snakeCase(_ string: String) -> String {
    let arrayOfStrings = text.components(separatedBy: " ")
    return arrayOfStrings.joined(separator: "_")
}
let text = "Snake case is the practice of writing compound words or phrases in which the elements are separated with one underscore character and no spaces."

snakeCase(text)

/// Return the elements of `strings` separated by ", "
func commaSeparated(_ strings: [String]) -> String {
    return strings.joined(separator: ", ")
}

let strs = ["Foo", "Bar", "Baz", "Qux"]
commaSeparated(strs) // "Foo, Bar, Baz, Qux"

// Return the most frequent element that appears in the array
func mostFrequent<Type: Hashable>(_ arr: [Type]) -> Type? {
    var dict = [Type: Int]()
    for element in arr {
        if dict[element] == nil {
            dict[element] = 1
        } else {
            dict[element]! += 1
        }
    }
    return dict.sorted(by: { $0.1 > $1.1 }).first?.key
}

mostFrequent([1, 2, 5, 4, 1, 9, 8, 7, 4, 5, 1, 5, 1]) // 1
mostFrequent(["a", "b", "c", "a"]) // "a"
mostFrequent([]) // nil

/////Flip takes a function as an argument, then makes the first argument the last.
func flip<A,B,C>(_ f:@escaping (A,B) -> C) -> (B,A) -> C {
   return { (b,a) in f(a,b) }
}

//Flip example
String.init(repeating:"🥳",count:5) == flip(String.init(repeating:count:))(5,"🥳") //true
// Return first unique character of string
func firstUniqueCharacter(_ str: String) -> Character? {
 var countDict: [Character: Int] = [:]
 for char in str {
   countDict[char] = (countDict[char] ?? 0) + 1
 }
 return str.filter{countDict[$0] == 1}.first
}
firstUniqueCharacter("barbeque nation")

// Prints a string N times without using loops.
func repeating(_ repeatedValue: String, count: Int) {
    guard count > 0 else {
        return
    }
    
    print(repeatedValue)
    
    repeating(repeatedValue, count: count - 1)
}

repeating("Text", count: 5)

// Find neighbors from vertex
public func neighborsForIndex(_ index: Int) -> [VertexType] {
   return edges[index].map({self.vertices[$0.v]})
}

//MARK: Flatten function
let optionalArrays = [[1,nil,3,4],[5,6,7,8]]
let arrays = [["a","b","c","d"],["e","f","g","y"]]


/// We use flat map to flatten the array and compact map to handle optionals
/// - Parameter arrays: Array of arrays to flatten
func flatten<T>(arrays: [[T?]]) -> [T] {
    return arrays.flatMap{$0}.compactMap{$0}
}

// Find neighbors from vertex
public func neighborsForIndex(_ index: Int) -> [VertexType] {
    return edges[index].map({self.vertices[$0.v]})
}

flatten(arrays: arrays) // ["a", "b", "c", "d", "e", "f", "g", "y"]
flatten(arrays: optionalArrays) // [1, 3, 4, 5, 6, 7, 8]

assert(flatten(arrays: arrays).count == 8)
assert(flatten(arrays: optionalArrays).count == 7)

// returns length of a string in bytes
func stringLenghtInBytes(string: String) -> Int {
    return (string as NSString).length
}

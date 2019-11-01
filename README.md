# 30-seconds-of-swift-code [![Tweet](https://jpillora.com/github-twitter-button/img/tweet.png)](http://www.twitter.com/share?text=%2330secondsofcode+30-seconds-of-swift-code+-+Swift+Implementation+of+30+seconds+of+code%0Ahttps://github.com/elizabethsiegle/30-seconds-of-swift-code&url=a")
[![first-timers-only](https://img.shields.io/badge/first--timers--only-friendly-blue.svg?style=flat-square)](http://www.firsttimersonly.com/)[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com) 

## Welcome to 30-seconds-of-swift-code!

>A Swift implementation of 30-seconds-of-code: A curated collection of useful Swift 4 snippets that you can understand in 30 seconds or less.
* Use <kbd>Ctrl</kbd> + <kbd>F</kbd> or <kbd>command</kbd> + <kbd>F</kbd> to search for a snippet.

**Note**:- This is in no way affiliated with the original [30-seconds-of-code](https://github.com/Chalarangelo/30-seconds-of-code/).

If you've come here from JavaScript land then you should be aware that this project uses `Swift 4`, therefore not all snippets will work as expected on every system. You'll need to check your Swift version by going to `Project` and then following the steps below. 
<br />
<br />
![version](/swiflangversion.png)

If you need help installing the latest stable release of Swift 4 check out [swift.org](https://swift.org/download/#releases). If you run into trouble make sure you check out Stackoverflow. 

This project contains plenty of useful snippets which can help beginners and newcomers quickly ramp-up their skills on Swift 4.

### Table of contents
### :books: List

<details><summary>View contents</summary> <ul><li><a href = "#bubble-sort"><code>bubbleSort</code></a></li>
<li><a href = "#filter-bools"><code>filterBools</code></a></li>
<li><a href = "#chunk"><code>chunk</code></a></li>
<li><a href = "#count-occurrences"><code>countOccurrences</code></a></li>
<li><a href = "#deep-flatten"><code>deepFlatten</code></a></li>
<li><a href = "#difference"><code>difference</code></a></li>
<li><a href = "#duplicates"><code>duplicates</code></a></li>
<li><a href = "#every_nth"><code>every_nth</code></a></li>
<li><a href = "#insertion-sort"><code>insertionSort</code></a></li>
<li><a href = "#fisher-yates-shuffle"><code>fisherYatesShuffle</code></a></li>
<li><a href = "#calc-median"><code>calcMedian</code></a></li>
<li><a href = "#calc-better-median"><code>calcBetterMedian</code></a></li>
<li><a href = "#average"><code>average</code></a></li>
<li><a href = "#factorial"><code>factorial</code></a></li>
<li><a href = "#gcd"><code>gcd</code></a></li>
<li><a href = "#lcm1"><code>lcm1</code></a></li>
<li><a href = "#lcm2"><code>lcm2</code></a></li>
<li><a href = "#maxn"><code>maxn</code></a></li>
<li><a href = "#minn"><code>minn</code></a></li>
<li><a href = "#all-unique"><code>allUnique</code></a></li>
<li><a href = "#just-keys"><code>justKeys</code></a></li>
<li><a href = "#just-values"><code>justValues</code></a></li>
<li><a href = "#capitalize-first"><code>capitalizeFirst</code></a></li>
<li><a href = "#capitalize-every-word"><code>capitalizeEveryWord</code></a></li>
<li><a href = "#count-vowels"><code>countVowels</code></a></li>
<li><a href = "#lower-case-first-letter-of-first-word"><code>lowerCaseFirstLetterOfFirstWord</code></a></li>
<li><a href = "#is-lower-case"><code>isLowerCase</code></a></li>
<li><a href = "#is-upper-case"><code>isUpperCase</code></a></li>
<li><a href = "#palindrome"><code>palindrome</code></a></li>
<li><a href = "#drop"><code>drop</code></a></li>
<li><a href = "#drop-right-while"><code>dropRightWhile</code></a></li>
<li><a href = "#nth-element"><code>nthElement</code></a></li>
<li><a href = "#filter-non-unique"><code>filterNonUnique</code></a></li>
<li><a href = "#generic-flatten"><code>genericFlatten</code></a></li>

</ul></details>

### :heavy_division_sign: Math

<details><summary>View contents</summary> <ul><li><a href = "#average"><code>average</code></a></li>
<li><a href = "#gcd"><code>gcd</code></a></li>
<li><a href = "#lcm1"><code>lcm1</code></a></li>
<li><a href = "#lcm2"><code>lcm2</code></a></li>
<li><a href = "#maxnn"><code>maxn</code></a></li>
<li><a href = "#minnn"><code>minn</code></a></li>
<li><a href = "#factorial"><code>factorial</code></a></li>
<li><a href = "#calc-median"><code>calcMedian</code></a></li>
<li><a href = "#calc-better-median"><code>calcBetterMedian</code></a></li>
<li><a href = "#radians-to-degrees"><code>radiansToDegrees</code></a></li>
</ul></details>

### :card_file_box: Object

<details><summary>View contents</summary> <ul><li><a href = "#all-unique"><code>allUnique</code></a></li>
<li><a href = "#just-keys"><code>justKeys</code></a></li>
<li><a href = "#just-values"><code>justValues</code></a></li>
</ul></details>

### :scroll: String

<details><summary>View contents</summary> <ul><li><a href = "#capitalize-first"><code>capitalizeFirst</code></a></li>
<li><a href = "#capitalize-everyword"><code>capitalizeEveryWord</code></a></li>
<li><a href = "#count-vowels"><code>countVowels</code></a></li>
<li><a href = "#lower-case-first-letter-of-first-word"><code>lowerCaseFirstLetterOfFirstWord</code></a></li>
<li><a href = "#is-lower-case"><code>isLowerCase</code></a></li>
<li><a href = "#is-upper-case"><code>isUpperCase</code></a></li>
<li><a href = "#palindrome"><code>palindrome</code></a></li>
<li><a href = "#snake"><code>snake</code></a></li>
<li><a href = "#simple_snake_case"><code>simple_snake_case</code></a></li>
<li><a href = "#first-unique-character"><code>firstUniqueCharacter</code></a></li>
</ul></details>

<hr></hr> 

## :books: List

### bubble sort 
BubbleSort is a sorting algorithm that uses the technique of repeatedly comparing and swapping the adjacent elements if they are in the wrong order.
```swift
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

```
<details><summary>View Examples</summary>

```swift
bubbleSort([32,12,12,23,11,19,81,76]) //[11, 12, 12, 19, 23, 32, 76, 81]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### chunk 
Chunks an array into smaller arrays of a certain size.
```swift
func chunk(arr: [Any], chunkSize: Int) -> [Any] {
    let chunks = stride(from: 0, to: arr.count, by: chunkSize).map {
        Array(arr[$0..<min($0 + chunkSize, arr.count)])
    }
    return chunks
}
```
<details><summary>View Examples</summary>

```swift
chunk(arr: [2, 4, 6, 8], chunkSize: 1) //[[2], [4], [6], [8]]
chunk(arr: [1, 3, 5, 9], chunkSize: 4) //[[1, 3, 5, 9]]
chunk(arr: ["hi", "yo", "bye", "bai"], chunkSize: 3) //[["hi", "yo", "bye"], ["bai"]]
chunk(arr: ["young", "scrappy", "hungry"], chunkSize: 2) //[["young", "scrappy"], ["hungry"]]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### every_nth
Returns every nth element in a given list and a new list is created that contains every nth element of the given list.

```swift
func getEvery( nth: Int, from list: [Any] ) {
    var nthElements = [Any]()
    var shiftedList = list
    shiftedList.insert(0, at: 0)
    
    for (i, element) in shiftedList.enumerated() {
        if i > 0 && i.isMultiple(of: nth) {
            nthElements.append(element)
        }
    }
}
```
<details><summary>View Examples</summary>

```swift
getEvery(nth: 4, from: ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"])  //["fox", "lazy"]

getEvery(nth: 2, from: [1,2,3,4,5,6,7,8,9]) //[2, 4, 6, 8]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### filter bools

Remove every value that's not a Boolean.

```swift
func filterBools(_ inputArr: [Any]) -> [Any] {
    return inputArr.compactMap { $0 as? Bool }
    
}
```
<details><summary>View Examples</summary>

```swift
filterBools([false, 2, "lol", 3, "a", "s", 34, false, true]) //[false, false, true]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### count occurrences 

Count occurrences of a string in an array.
```swift
func countOccurrences(arr: [String], into: String) -> Int {
    return arr.reduce(0) { $1 == into ? $0 + 1 : $0 }
}
```
<details><summary>View Examples</summary>

```swift
countOccurrences(arr: ["FOO", "FOO", "BAR"], into: "FOO") //2
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### deep flatten 

Deep flattens a list with recursion. 
```swift
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
```
<details><summary>View Examples</summary>

```swift
deepFlatten(arr: [6, 5, 4, [3, 2], [1]]) //[6, 5, 4, 3, 2, 1]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### difference 
Return element(s) not contained in both of the given arrays (ie. elements only contained in one array and not both.)
```swift
func difference(arr1: [AnyHashable], arr2: [AnyHashable]) -> Set<AnyHashable> {
    return Set(arr1).symmetricDifference(arr2)
}
```
<details><summary>View Examples</summary>

```swift
difference(arr1: [2, 4, 6, 8], arr2: [10, 8, 6, 4, 2, 0]) //10
difference(arr1: ["mulan", "moana", "belle", "elsa"], arr2: ["mulan", "moana", "belle", "pocahontas"]) //elsa, pocahontas
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### duplicates
Check for duplicate elements in a given array.
```swift
func duplicates(arr1: [AnyHashable]) -> Bool {
    return arr1.count != (Set<AnyHashable>(arr1)).count
}
```
<details><summary>View Examples</summary>

```swift
duplicates(arr1: [5, 4, 3, 2]) //false
duplicates(arr1: ["hermione", "hermione", "ron", "harry"]) //true
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### insertion sort
Insertion Sort algorithm--inspired by Ray Wenderlich https://github.com/raywenderlich/swift-algorithm-club/tree/master/Insertion%20Sort.
```swift
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
```
<details><summary>View Examples</summary>

```swift
let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list) //[-1, 0, 1, 2, 3, 3, 5, 8, 9, 10, 26, 27]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### Swift Standard Library Sort
Link to Official Apple Developer Documentation - https://developer.apple.com/documentation/swift/array/1688499-sort
```swift
var integerArray = [5,8,2,3,656,9,1]
var stringArray = ["India", "Norway", "France", "Canada", "Italy"]
integerArray.sort() //[1, 2, 3, 5, 8, 9, 656]
stringArray.sort() //["Canada", "France", "India", "Italy", "Norway"]
```
<details><summary>View Examples</summary>

```swift
integerArray.sort() //[1, 2, 3, 5, 8, 9, 656]
stringArray.sort() //["Canada", "France", "India", "Italy", "Norway"]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### fisher yates shuffle
[Fisher-Yates algorithm](https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle) aka Knuth shuffle to shuffle an array creates a uniform shuffle of the array where each permutation is equally likely in O(n) time.
```swift
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
```
<details><summary>View Examples</summary>

```swift
var foo = [1,2,3]
shuffle(arr1: foo) //[2,3,1] , foo = [1,2,3]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### generic flatten
Takes an array of arrays as input and transforms it to a flattened array of its type. ( handles optionals )
```swift
/// We use flat map to flatten the array and compact map to handle optionals
/// - Parameter arrays: Array of arrays to flatten
func flatten<T>(arrays: [[T?]]) -> [T] {
    return arrays.flatMap{$0}.compactMap{$0}
}
```
<details><summary>View Examples</summary>

```swift
flatten(arrays: [["a","b","c","d"],["e","f","g","y"]]) // ["a", "b", "c", "d", "e", "f", "g", "y"]
flatten(arrays: [[1,nil,3,4],[5,6,7,8]]) // [1, 3, 4, 5, 6, 7, 8]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

## :heavy_division_sign: Math

### average 
Returns the average of two or more doubles in an array.
```swift
func average(arr: [Double]) -> Double {
    return arr.reduce(0, +)/Double(arr.count)
}
```
<details><summary>View Examples</summary>

```swift
average(arr: [5, 4, 3, 2, 1]) //3
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### factorial 
Calculates the factorial of a number.
```swift
func factorial(num: Int) -> Int {
    var fact: Int = 1
    for index in stride(from: 1, to: num+1, by: 1) {
        fact = fact * index
    }
    return fact
}
```
<details><summary>View Examples</summary>

```swift
factorial(num: 4) //24
factorial(num: 10) //3628800
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### gcd 
Calculates the greatest common divisor between two integers with recursion.
```swift
func gcd(num1: Int, num2: Int) -> Int {
    let mod = num1 % num2
    if mod != 0 {
        return gcd(num1: num2, num2: mod)
    }
    return num2
}
```
<details><summary>View Examples</summary>

```swift
gcd(num1: 228, num2: 36) //12
gcd(num1: -5, num2: -10)
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### lcm1
Returns the least common multiple of two integers using the `gcd` function above.
```swift
func lcm1(num1: Int, num2: Int) -> Int {
    return abs(num1 * num2) / gcd(num1: num1, num2: num2)
}
```
<details><summary>View Examples</summary>

```swift
lcm1(num1: 12, num2: 7) //84
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### lcm2
Least common multiple of an array using the first lcm.
```swift
func lcm2(arr1: [Int]) -> Int {
    return arr1.reduce(1) { lcm1(num1: $0, num2: $1) }
}
```
<details><summary>View Examples</summary>

```swift
lcm2(arr1: [4, 3, 2]) //12
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### max n 
Returns the maximum element from the provided array.
```swift
func maxn(arr1: [Int]) -> Int {
    if let (_, maxValue) = arr1.enumerated().max(by: { $0.element < $1.element }) {
        return maxValue
    }
    return 0
}
```
<details><summary>View Examples</summary>

```swift
maxn(arr1: [2, 9, 5]) //9
[2, 9, 5].max() //9
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### min n 
Returns the minimum integer from an array without the built-in `.min()` function (used in examples to compare results.)
```swift
func minn(arr1: [Int]) -> Int {
    var minVal = arr1[0]
    for num in arr1 {
        minVal = (num  < minVal) ? num : minVal
    }
    return minVal
}
```
<details><summary>View Examples</summary>

```swift
minn(arr1: [8, 2, 4, 6]) //2
[8, 2, 4, 6].min() //2
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### calc median
One way of calculating the median of an array of integers.
```swift
func calcMedian(arr: [Int]) -> Float {
    return Float(arr.sorted(by: <)[arr.count / 2])
}
```
<details><summary>View Examples</summary>
```swift
calcMedian(arr: [1,2,3,4,5,6,7,8]) //returns 4.5
```
</details>
<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### calc better median
Better way of calculating the median of an array of integers.
```swift
func calcBetterMedian(arr: [Int]) -> Float {
    let sorted = arr.sorted()
    if sorted.count % 2 == 0 {
        return Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
    }
    return Float(sorted[(sorted.count - 1) / 2])
}
```
<details><summary>View Examples</summary>

```swift
calcBetterMedian(arr: [1,2,3,4,5,6,7,8]) //returns 4.5
```
</details>

### radians to degrees
Convert an angle from radians to degrees.
```swift
func radiansToDegrees(_ angle: Double) -> Double {
    return angle * 180 / .pi
}
```
<details><summary>View Examples</summary>

```swift
radiansToDegrees(4) // 229.183
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

## :card_file_box: Object

### all unique 

Checks a flat list for all unique values, returning True if list values are all unique and False if list values aren't all unique.
```swift
func allUnique(arr: [AnyHashable]) -> Bool {
    return arr.count == Set<AnyHashable>(arr).count
}
```
<details><summary>View Examples</summary>

```swift
allUnique(arr: [5, 4, 3, 2]) //true
allUnique(arr: ["lol", "rofl", "lol"]) //false
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### just keys
Function which accepts a dictionary of key-value pairs and returns a new array of just the keys.
```swift
func justKeys(dict: Dictionary<AnyHashable, AnyHashable>) -> [AnyHashable] {
    return Array(dict.keys)
}
```
<details><summary>View Examples</summary>

```swift
var dict: Dictionary<String, String> = ["Mulan": "Mushu", "Anna": "Olaf", "Pocahontas": "Fleeko"]
justKeys(dict: dict) //[Anna, Mulan, Pocahontas]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### just values
Function which accepts a dictionary of key-value pairs and returns a new array of just the values.
```swift
func justValues(dict: Dictionary<AnyHashable, AnyHashable>) -> [AnyHashable] {
    return Array(dict.values)
}
```
<details><summary>View Examples</summary>

```swift
justValues(dict: dict) //[Olaf, Mushu, Fleeko]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

## :scroll: String

### capitalize first
Capitalizes the first letter of a string, leaving the rest the same.
```swift
func capitalizeFirst(str: String) -> String {
    var components = str.components(separatedBy: " ")
    components[0] = components[0].capitalized
    return components.joined(separator: " ")
}
```
<details><summary>View Examples</summary>

```
capitalizeFirst(str: "i like cheesE") //I like cheesE
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### capitalize every word 
Capitalizes the first letter of every word in a string.
```swift
func capitalizeEveryWord(str: String) -> String {
    return str.capitalized
}
```
<details><summary>View Examples</summary>

```swift
capitalizeEveryWord(str: "on a scale from 1 to 10 how would you rate your pain") //On A Scale From...
capitalizeEveryWord(str: "well, hello there!") //Well, Hello There!
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### count vowels 
Retuns `number` of vowels in provided `string`.
```swift
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
```
<details><summary>View Examples</summary>

```swift
countVowels(str: "hi mom") //2
countVowels(str: "aeiou") //5
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### lower case first letter of first word
Decapitalizes the first letter of the first word in a string.
```swift
func lowerCaseFirstLetterOfFirstWord(str: String) -> String {
    var components = str.components(separatedBy: " ")
    components[0] = components[0].lowercased()
    return components.joined(separator: " ")
}
```
<details><summary>View Examples</summary>

```swift
lowerCaseFirstLetterOfFirstWord(str: "Christmas Switch was a solid movie") //christmas Switch...
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### is lower case 
Return true if any character in a string is capitalized.

```swift
func isLowerCase(str: String) -> Bool {
    return str == str.lowercased()
}
```
<details><summary>View Examples</summary>

```swift
isLowerCase(str: "I LOVE CHRISTMAS") //false
isLowerCase(str: "<3 lol") //true
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### is upper case 
Checks that each character in a string is uppercase.

```swift
func isUpperCase(str: String) -> Bool {
    return str == str.uppercased()
}
```
<details><summary>View Examples</summary>

```swift
isUpperCase(str: "LOLOLOL") //true
isUpperCase(str: "lmao") //false
isUpperCase(str: "Rofl") //false
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### palindrome 
Returns `True` if the given string is a palindrome, `False` if otherwise.
```swift
func palindrome(str: String) -> Bool {
    return str.lowercased() == String(str.reversed()).lowercased()
}
```
<details><summary>View Examples</summary>

```swift
palindrome(str: "racecar") //true
palindrome(str: "Madam") //true
palindrome(str: "lizzie") //false
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### drop 
Returns a new array with n elements removed from the left.
```swift
func drop(arr: [AnyHashable], num: Int) -> [AnyHashable] {
    return Array(arr.dropFirst(num)) //need Array() to concert ArraySlice to Array
}
```
<details><summary>View Examples</summary>

```swift
drop(arr: [5, 4, 3, 2, 1, 0], num: 1)
drop(arr: ["Huey", "Dewey", "Louie"], num: 3)
```
</details>

### array to csv
Returns a CSV-String created from 2D-Array.
```swift
func arrayToCSV(_ inputArray: [Array<String>]) -> String {
    var csv: String = ""
    for row in inputArray {
        csv.append(row.map { "\"\($0)\"" } .joined(separator: ", ") + "\n")
    }
    return csv
}
```
<details><summary>View Examples</summary>

```swift
arrayToCSV([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]])
//"a", "b", "c"
//"d", "e", "f"
//"g", "h", "i"
```
</details>


### flip
Returns the given function with fliped arguments.
```swift
func flip<A, B, C>(_ function: @escaping ((A, B) -> C)) -> ((B, A)->C) {
    return { (a, b) in
        return function(b, a)
    }
}
```

<details><summary>View Examples</summary>

```swift
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
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### drop right while
Removes elements from the end of an array until the passed function returns true.
```swift
func dropRight(arr: [Int], while predicate: ((Int) -> Bool)) -> [Int] {
    var returnArr = arr
    for item in arr.reversed() {
        if predicate(item) { break }
        returnArr = returnArr.dropLast()
    }
    return returnArr
}
```
<details><summary>View Examples</summary>

```swift
dropRight(arr: [1, 2, 3, 4, 5], while: { $0 < 0 }) //[]
dropRight(arr: [1, 2, 3, 4, 5], while: { $0 > 0 }) //[1, 2, 3, 4, 5]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### filter non unique 
Filters out the non-unique values in a list
```swift
func filterNonUnique(arr: [Any]) -> [Any] {
    let set = NSOrderedSet(array: arr)
    return set.array
}
```
<details><summary>View Examples</summary>

```swift
filterNonUnique(arr: [1, 2, 2, 3, 5]) // [1, 2, 3, 5]
filterNonUnique(arr: ["Tim", "Steve", "Tim", "Jony", "Phil"]) // ["Tim", "Steve", "Jony", "Phil"]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### snake
Returns a new string in snake case
```swift
func snake(str: String) -> String? {
    let pattern = "([a-z0-9])([A-Z])"

    let regex = try? NSRegularExpression(pattern: pattern, options: [])
    let range = NSRange(location: 0, length: str.count)
    return regex?.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: "$1_$2")
        .lowercased() 
        .replacingOccurrences(of: " ", with: "_")
        .replacingOccurrences(of: "-", with: "_")
}
```
<details><summary>View Examples</summary>

```swift
snake(str: "camelCase") // 'camel_case'
snake(str: "some text") // 'some_text'
snake(str: "some-mixed_string With spaces_underscores-and-hyphens") // 'some_mixed_string_with_spaces_underscores_and_hyphens'
snake(str: "AllThe-small Things") // "all_the_smal_things"
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### simple_snake_case
Returns a new string in snake case
```swift
func snakeCase(_ string: String) -> String {
    let arrayOfStrings = text.components(separatedBy: " ")
    return arrayOfStrings.joined(separator: "_")
}
```
<details><summary>View Examples</summary>
    
```swift
    let text = "Snake case is the practice of writing compound words or phrases in which the elements are separated with one underscore character and no spaces."
    snakeCase(text)
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a
    

### first-unique-character
Returns first unique character in a string
```swift
func firstUniqueCharacter(_ str: String) -> Character? {
  var countDict: [Character: Int] = [:]
  for char in str {
    countDict[char] = (countDict[char] ?? 0) + 1
  }
  return str.filter{countDict[$0] == 1}.first
}
```
<details><summary>View Examples</summary>

```swift
firstUniqueCharacter("barbeque nation") //"r"
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### nth element
Returns every nth element from given list.
```swift
func everyNth(list: [Any], n: Int) -> [Any] {
    return list.enumerated().compactMap({ ($0.offset + 1) % n == 0 ? $0.element : nil })
}
```
<details><summary>View Examples</summary>

```swift
everyNth(list: [1, 2, 3, 4, 5, 6], n: 2) // [ 2, 4, 6 ]
everyNth(list: ["a", "b", "c", "d", "e", "f"], n: 3) // [ "c", "f" ]
```
</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### is sorted
Returns 1 if array is sorted in ascending order, -1 if descending order, and 0 if unsorted
```swift
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
```
<details><summary>View Examples</summary>

```swift
isSorted(arr: [1, 2, 2, 4, 8]) // 1
isSorted(arr: [8, 4, 4, 2, 1]) // -1
isSorted(arr: [1, 4, 2, 8, 4]) // 0
```
</details>

### is sorted 2
Returns 1 if array is sorted in ascending order, -1 if descending order, and 0 if unsorted - OPTION 2 shortest

```swift
func sortedArray (arr: [Int]) -> Int {
    let sortedArr = arr.sorted(by: {$1>$0})
    return arr == sortedArr ? 1 : arr == sortedArr.reversed() ?  -1 :  0
}
```
<details><summary>View Examples</summary>

```swift
//Input sortedArray(arr: [1,2,3,4,5]) - Output 1
//Input sortedArray(arr: [5,4,3,2,1]) - Output -1
//Input sortedArray(arr: [6,2,3,4,8]) - Output 0
```
</details>


<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### camel case string to snake case
Convert camel case string (ex.'appleStore', 'TimCook') to snake case (ex. `apple_store`, 'tim_cook')
```swift
func camelCaseToSnake(str: String) -> String {
    guard let regex = try? NSRegularExpression(pattern: "([a-z0-9])([A-Z])", options: []) else {
        return str
    }
    let range = NSRange(location: 0, length: str.count)
    return regex.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: "$1_$2").lowercased()
}

```
<details><summary>View Examples</summary>

```swift
camelCaseToSnake(str: "appleIphoneX")
camelCaseToSnake(str: "camelCaseStringToSnakeCase")
camelCaseToSnake(str: "string")
camelCaseToSnake(str: String())
camelCaseToSnake(str: "firstPullRequestForHacktoberFest🍁☔️🤖")
```

</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### Flip

Flip takes a function as an argument, then makes the first argument the last.

```swift
func flip<A,B,C>(_ f:@escaping (A,B) -> C) -> (B,A) -> C {
    return { (b,a) in f(a,b) }
}
```

<details><summary>View Examples</summary>

```swift
String.init(repeating:"🥳",count:5) == flip(String.init(repeating:count:))(5,"🥳") //true
```

</details>

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

### Graph

Returns the neighbors of a vertex

```swift
public func neighborsForIndex(_ index: Int) -> [VertexType] {
    return edges[index].map({self.vertices[$0.v]})
}
```

<br><a href = "#table-of-contents">:arrow_up: Back to top</a>

## Contributors

[//]: #*

[Lizzie Siegle](https://github.com/elizabethsiegle)

[Abdulhakim Ajetunmobi](https://github.com/abdulajet)

[Hatos Barbosa](https://github.com/hatosbarbosa)

[Paul Schroder](https://github.com/phjs)

[Viktor Sokolov](https://github.com/BNTR)

[Sai Sandeep Mutyala](https://github.com/heliostrike)

[Sören Kirchner](https://github.com/soeren-kirchner)

[Alexey Ivanov](https://github.com/t0rn)

[Júlio John Tavares Ramos](https://github.com/JulioJohn)

[Camilo Andres Ibarra Yepes](https://github.com/camiloibarrayepes)

[Nicolas Combe](https://github.com/NicolasCombe5555)

[William Spanfelner](https://github.com/Will-1-Am)

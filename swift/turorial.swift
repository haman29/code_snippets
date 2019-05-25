// swift tutorial
// https://employment.en-japan.com/engineerhub/entry/2017/05/25/110000
// 後半はほぼこれ https://github.com/hatena/Hatena-Textbook/blob/master/swift-programming-language.md

import Foundation

// imutable
let immutableStr = "hello"
assert(immutableStr == "hello")

// mutable
var mutableStr = "hello"
assert(immutableStr == "hello")

// 型指定
var mutableStr2: String = "hello"
assert(immutableStr == "hello")

// cast
let thisYear = "This year is " + String(2017)
assert(thisYear == "This year is 2017")

// 変数展開
let year = 2017
let nextYear = "Next year is \(year + 1)"
assert(nextYear == "Next year is 2018")

// Array
let itemsArray = ["foo", "bar", "baz"]
assert(itemsArray == ["foo", "bar", "baz"])

let itemsArrayString: [String] = ["1", "3", "5"]
assert(itemsArrayString == ["1", "3", "5"])

let itemsArrayInt: [Int] = [1, 3, 5]
assert(itemsArrayInt == [1, 3, 5])

// Dictionary
let itemsDictionary = [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
]
assert(itemsDictionary == [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
])

// 型指定
let itemsDictionaryString: [String: String] = [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
]
assert(itemsDictionary == [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
])

// nest

let nestedDictionary: [String: [String: Int]] = [
  "hoge": [
    "fuga": 1,
    "piyo": 2,
  ]
]
assert(nestedDictionary == [
  "hoge": [
    "fuga": 1,
    "piyo": 2,
  ]
])

// for文, if文
let list = [3, 7, 9, 12, 8, 5]
var result: [String] = []
for number in list {
  if number % 2 == 0 {
    result += ["number \(number) is even"]
  } else {
    result += ["number \(number) is odd"]
  }
}
assert(result[0] == "number 3 is odd")
assert(result[1] == "number 7 is odd")
assert(result[2] == "number 9 is odd")
assert(result[3] == "number 12 is even")
assert(result[4] == "number 8 is even")
assert(result[5] == "number 5 is odd")

// while文
var number = 1
var result2: [Int] = []
while number < 10 {
  result2 += [number]
  number += 1
}
assert(result2 == [1, 2, 3, 4, 5, 6, 7, 8, 9])

// switch
let age = 17
var result3: String
switch age {
case 0...6:
  result3 = "kindergarden kid"
case 7...12:
  result3 = "primary school student"
case 13...15:
  result3 = "junior high school student"
case 16...18:
  result3 = "high school student"
case 19...22:
  result3 = "college student"
default:
  result3 = "business person"
}
assert(result3 == "high school student")


// function
func greet(expression: String, person: String) -> String {
  return "\(expression) \(person)."
}
assert(greet(expression: "Hello", person: "Mike") == "Hello Mike.")

// closure
func incrementer() -> ( () -> Int ) {
  var count = 0
  func increment() -> Int {
    count += 1
    return count
  }
  return increment
}
var counter = incrementer()
assert(counter() == 1)
assert(counter() == 2)
assert(counter() == 3)

// closure 2
func incrementerWithAnonymousFunc() -> ( () -> Int ) {
  var count = 0
  return { () -> Int in // in?!?!?!!
    count += 1
    return count
  }
}
var counter2 = incrementerWithAnonymousFunc()
assert(counter2() == 1)
assert(counter2() == 2)
assert(counter2() == 3)

// closure 3
func numbersMap(list: [Int], condition: (Int) -> Int) -> [Int] {
  var numbers: [Int] = []
  for item in list {
    numbers.append( condition(item) )
  }
  return numbers
}

var items: [Int] = [1, 2, 3, 4, 5]
assert(
  numbersMap(list: items, condition: { (number: Int) -> Int in number * 2 })
  == [2, 4, 6, 8, 10]
)

// map, filter, reduce
var numbers = [3, 7, 9, 12, 8, 5]
assert(
  numbers.map({ (number: Int) -> Int in return number * 2 })
  == [6, 14, 18, 24, 16, 10]
)
assert(
  numbers.filter({ (number: Int) -> Bool in return number % 2 == 1 })
  == [3, 7, 9, 5]
)
assert(
  numbers.reduce(0, { (total: Int, number: Int) -> Int in return total + number })
  == 44
)

// map, filter, reduce (型省略)
assert(numbers.map{ number in number * 2 } == [6, 14, 18, 24, 16, 10])
assert(numbers.filter{ number in number % 2 == 1 } == [3, 7, 9, 5])
assert(numbers.reduce(0){ total, number in total + number } == 44)


// Class
class MyApp {
  class Shape {
    var name: String

    init(name: String) {
      self.name = name
    }
  }

  // inheritance
  class Rectangle: Shape {
    var width: Double
    var height: Double

    init(name: String, width: Double, height: Double) {
      self.width = width
      self.height = height
      super.init(name: name)
    }

    func area() -> Double {
      return width * height
    }
  }

  // inheritance
  class Triangle: Shape {
    var bottom: Double
    var height: Double

    init(name: String, bottom: Double, height: Double) {
      self.bottom = bottom
      self.height = height
      super.init(name: name)
    }

    func area() -> Double {
      return bottom * height / 2.0
    }
  }
}
var shape = MyApp.Shape(name: "My Sharp")
assert(shape.name == "My Sharp")

var square = MyApp.Rectangle(name: "My Square", width: 7.5, height: 7.5)
assert(square.name == "My Square")
assert(square.area() == 56.25)

var triangle = MyApp.Triangle(name: "My Triangle", bottom: 10, height: 8)
assert(triangle.name   == "My Triangle")
assert(triangle.area() == 40)

// Optional
var optionalInt: Int? = 5
// var optionalInt: Optional<Int> = 5
optionalInt = nil
assert(optionalInt == nil)

var optionalString: String? = "hoge"
// var optionalString: Optional<String> = "hoge"
optionalString = nil
assert(optionalString == nil)

// Optional Binding (if)
func hello(str: String?) -> String {
  let optionalstr: String? = str
  if let unwrappedstr = optionalstr {
    return unwrappedstr.uppercased()
  } else {
    return ""
  }
}
assert(hello(str: "hello") == "HELLO")
assert(hello(str: nil) == "")

// Optional Binding (guard)
func hello2(str: String?) -> String {
  let optionalstr: String? = str
  guard let unwrappedstr = optionalstr else { return "" }
  return unwrappedstr.uppercased()
}
assert(hello2(str: "hello") == "HELLO")
assert(hello2(str: nil) == "")

// Optional Chaining
var optionalStr: String?
assert(optionalStr?.uppercased() == nil)

optionalStr = "hello"
assert(optionalStr?.uppercased() == "HELLO")

// Forced Unwrapping
var optionalStr2: String? = "hello"
assert(optionalStr2!.uppercased() == "HELLO")
// var optionalStr3: String? = nil
// optionalStr3!.uppercased()

// ImplicitlyUnwrappedOptional型
var implicitlyStr: String!
implicitlyStr = "hello"
assert(implicitlyStr.uppercased() == "HELLO")

// Tuple
let steve = ("Steve Jobs", 56)
assert(steve.0 == "Steve Jobs")

let (name, agee) = steve
assert(name == "Steve Jobs")
assert(agee == 56)

let steve2 = (name: "Steve Jobs", age: 56)
assert(steve2.age == 56)

// Set
let fishes: Set<String> = ["Mackerel", "Saury", "Sardine"]
assert(fishes.contains("Mackerel") == true)

// 三項演算子
let someValue = true ? 1 : 0
assert(someValue == 1)

// nil 結合演算子
var optionalInt2: Int?
let someValue2 = optionalInt2 ?? 0
assert(someValue2 == 0)

// `let a?` のようにして nil チェックできる
func hoge(pair: (String?, String?)) -> String {
  switch pair {
  case let (a?, b?):
    return "\(a) and \(b)"
  case let (a?, _):
    return a
  case let (_, b?):
    return b
  case (_, _):
    return "No man"
  }
}
assert(hoge(pair: ("Steve", "Bill")) == "Steve and Bill")
assert(hoge(pair: ("Steve", nil)) == "Steve")
assert(hoge(pair: (nil, "Bill")) == "Bill")
assert(hoge(pair: (nil, nil)) == "No man")

// part 2
do {
  var result: [Int] = []
  for case let i? in [0, nil, 3, 4, nil] {
    result += [i]
  }
  assert(result == [0, 3, 4])
}

// part 3
do {
  // 実行しないと、Optional かどうかわからないから ? がないとエラー（多分）
  var result: [Optional<Int>] = []
  for i in [0, nil, 3, 4, nil] where i != nil {
    result += [i]
  }
  assert(result == [0, 3, 4])
}

// 可変長引数
do {
  // `_` つけるとkey省略して渡せる
  func sum(_ numbers: Int...) -> Int {
    return numbers.reduce(0, +)
  }
  assert(sum(1, 4, 7) == 12)
}

// 関数型
do {
  func multiply(number first: Int, by second: Int) -> Int {
    return first * second
  }
  var calculation: (Int, Int) -> Int
  calculation = multiply
  assert(calculation(3, 7) == 21)
}
do {
  func calculation(kind: String) -> (Int, Int) -> Int {
    func multiply(number: Int, by: Int) -> Int { return number * by }
    func add(number: Int, to: Int) -> Int { return number + to }

    switch kind {
    case "add":
      return add
    case "multiply":
      return multiply
    default:
      fatalError("Unsupported")
    }
  }
  assert(calculation(kind: "add")(2, 4) == 6)
  assert(calculation(kind: "multiply")(2, 4) == 8)
}

// closure
do {
  func doubling(number: Int) -> Int {
    return 2 * number
  }
  assert([0, 1, 2, 3, 4, 5].map(doubling) == [0, 2, 4, 6, 8, 10])
}
do {
  assert(
    [0, 1, 2, 3, 4, 5].map({ (number: Int) -> Int in
      return 2 * number
                           })
    == [0, 2, 4, 6, 8, 10]
  )
}
do {
  assert([0, 1, 2, 3, 4, 5].map({ number in 2 * number }) == [0, 2, 4, 6, 8, 10])
}
do {
  assert([0, 1, 2, 3, 4, 5].map({ 2 * $0 }) == [0, 2, 4, 6, 8, 10])
}
do {
  assert([0, 1, 2, 3, 4, 5].map{ 2 * $0 } == [0, 2, 4, 6, 8, 10])
}

// enum
enum ArithmeticOperation {
  case add
  case subtract
  case multiply
  case divide
}
enum Diagram {
  case line(Double)
  case rectangle(Double, Double)
  case circle(Double)
}
func calculateArea(of diagram: Diagram) -> Double {
  let area: Double
  switch diagram {
  case .line(_):
    area = 0.0
  case let .rectangle(width, height):
    area = width * height
  case .circle(let radius):
    area = radius * radius * Double.pi
  }
  return area
}
assert(calculateArea(of: .line(3.0)) == 0.0)
assert(calculateArea(of: .rectangle(2.0, 3.0)) == 6.0)
assert(calculateArea(of: .circle(3.0)) == 3.0 * 3.0 * Double.pi)

// struct
do {
  struct Body {
    let height: Double
    let mass: Double
  }
  let myBody = Body(height: 129.3, mass: 129.3)
  func calculateBodyMassIndex(of body: Body) -> Double {
    let meterHeight = body.height / 100.0
    return body.mass / (meterHeight * meterHeight)
  }
  assert(calculateBodyMassIndex(of: myBody) == 77.33952049497292)
}

// Class
do {
  class Lot {
    var remains: [String]
    init(_ elements: [String]) {
      self.remains = elements
    }
    func choose() -> String? {
      if remains.isEmpty {
        return nil
      }
      let randomIndex = Int.random(in: 0 ..< remains.count)
      return remains.remove(at: randomIndex)
    }
  }
  func pick(from lot: Lot, count: Int) -> [String] {
    var result: [String] = []
    for _ in (0..<count) {
      lot.choose().map { result.append($0) }
    }
    return result
  }
  let input: [String] = ["Swift", "Objective-C", "Java", "Scala", "Perl", "Ruby"]
  let lot: Lot = Lot(input)
  assert((pick(from: lot, count: 3) + lot.remains).sorted() == input.sorted())
}

// Properties and Methods
// Stored Properties
do {
  class Dog {
    var name: String?
  }
  let dog = Dog()
  dog.name = "Pochi"
  assert(dog.name == "Pochi")
}

// lazy
do {
  class DataFormatter {
    var format: String = ""
  }
  class DataPrinter {
    lazy var formatter = DataFormatter()
    var data: [String] = []
  }
  let printer = DataPrinter()
  assert(printer.data == [])
}

// computed properties
do {
  struct Circle {
    var radius: Double = 0.0
    var area: Double {
      get {
        return pow(radius, 2) * Double.pi
      }
      set (newArea) {
        radius = sqrt(newArea / Double.pi)
      }
    }
  }
  var circle: Circle = Circle()
  assert(circle.area == 0.0)
  circle.area = 2.0
  assert(circle.area == 2.0)
}

// property observers
do {
  struct Dam {
    let limit = 100.0
    var waterLevel = 0.0 {
      willSet {
        assert("\(newValue - waterLevel) will change" == "120.0 will change")
      }
      didSet {
        var result: String = ""
        if waterLevel > limit {
          result = "Bursted"
          waterLevel = limit
        }
        assert(result == "Bursted")
        assert("\(waterLevel - oldValue) did change" == "100.0 did change")
      }
    }
  }
  var dam = Dam()
  dam.waterLevel = 120
  assert(dam.waterLevel == 100)
}

// Methods
do {
  class Printer {
    var numberOfCopies = 1
    func put(string: String) {
      for _ in (0..<self.numberOfCopies) {
        assert(string == "Word")
      }
    }
  }
  let printer = Printer()
  printer.put(string: "Word")
}

// mutating Methods
do {
  struct StepCounter {
    var count: Int = 0
    mutating func step() {
      count += 1
    }
  }
  var counter = StepCounter()
  counter.step()
  counter.step()
  assert(counter.count == 2)
}

// enum
do {
  enum ToggleSwitch {
    case on
    case off
    mutating func toggle() {
      switch self {
      case .on:
        self = .off
      case .off:
        self = .on
      }
    }
  }
  var electricSwitch = ToggleSwitch.off
  electricSwitch.toggle()
  assert(electricSwitch == ToggleSwitch.on)
}

// Subscripts
do {
  struct OddNumbers {
    subscript(index: Int) -> Int {
      return index * 2
    }
  }
  let odds = OddNumbers()
  assert(odds[3] == 6)
}

// Inheritance
do {
  class Animal {
    func bark() -> String {
      return ""
    }
  }
  class Dog: Animal {
    override func bark() -> String {
      return "Bark"
    }
  }
  let pochi: Animal = Dog()
  assert(pochi.bark() == "Bark")
}

// Initializers
do {
  struct Length {
    let meter: Double
    init(meter: Double) {
      self.meter = meter
    }
    init(yard: Double) {
      self.meter = yard / 0.9144
    }
  }
  assert(Length(yard: 245.6).meter == 268.59142607174101)
  assert(Length(meter: 245.6).meter == 245.6)
}

// Failable Initializers
do {
  struct Tweet {
    let message: String
    init?(message: String) {
      guard message.count <= 140 else {
        return nil
      }
      self.message = message
    }
  }
  var result1: String = ""
  var result2: String = ""
  if let tweet = Tweet(message: "Hello there") {
    result1 = tweet.message
  }
  if let tweet = Tweet(message: "Hello therexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx") {
    result2 = tweet.message
  }
  assert(result1 == "Hello there")
  assert(result2 == "")
}

// Casting
do {
  class File {
    var filename: String
    init(filename: String) {
      self.filename = filename
    }
  }
  class SwiftFile: File {
    func compile() -> File {
      return File(filename: filename + ".output")
    }
  }
  class Xcode {
    var sources: [File] = []
    func build() -> [File] {
      var compiled: [File] = []
      for source in sources {
        if let swift = source as? SwiftFile {
          compiled.append(swift.compile())
        } else {
          compiled.append(source)
        }
      }
      return compiled
    }
  }

  let xcode: Xcode = Xcode()
  xcode.sources = [File(filename: "hoge"), SwiftFile(filename: "fuga")]
  assert(xcode.build().map{ file in file.filename } == ["hoge", "fuga.output"])
}

// Protocols
protocol FileSystemItem {
  var name: String { get }
  var path: String { get }
  init(directory: Directory, name: String)
  func copy() -> Self
}
struct File: FileSystemItem {
  var name: String {
    return Array(path).split { (char) -> Bool in char == "/" }.last.map { String($0) } ?? ""
    }
    let path: String

    init(path: String) {
      self.path = path
    }
    init(directory: Directory, name: String) {
      self.init(path: directory.path + name)
    }
    func copy() -> File {
      return File(path: path + " copy")
    }
}
struct Directory: FileSystemItem {
  var name: String {
    return Array(path).split { (char) -> Bool in char == "/" }.last.map { String($0) } ?? ""
    }
    let path: String
    init(path: String) {
      self.path = path
    }
    init(directory: Directory, name: String) {
      self.init(path: directory.path + name + "/")
    }
    func copy() -> Directory {
      return Directory(path: path[path.startIndex..<(path.index(before: path.endIndex))] + " copy/")
    }
}

// extensions
extension String {
  var isHiragana: Bool {
    return unicodeScalars.reduce(!isEmpty) { (result, unicode) -> Bool in
      return result && 0x3040 <= unicode.value && unicode.value < 0x30A0
    }
  }
}
assert("こんにちは".isHiragana == true)
assert("hoge".isHiragana == false)

// protocol extensions
protocol Hiraganable {
  var isHiragana2: Bool { get }
}
extension String: Hiraganable {
  var isHiragana2: Bool {
    return unicodeScalars.reduce(!isEmpty) { (result, unicode) -> Bool in
      return result && 0x3040 <= unicode.value && unicode.value < 0x30A0
    }
  }
}
extension Collection where Iterator.Element : Hiraganable {
  var isHiragana2: Bool {
    return reduce(!isEmpty) { (result, string) -> Bool in
      return result && string.isHiragana2
    }
  }
}
assert(["あいうえお", "かきくけこ"].isHiragana2 == true)

// error handling
/*
do {
enum NetworkError: Error {
case Unreachable
case UnexpectedStatusCode(Int)
}

func getResourceFromNetwork() throws -> String {
let URL = "http://www.hatena.ne.jp/"
if !checkConnection(URL) {
throw NetworkError.Unreachable
}
let (statusCode, response) = connectHTTP(URL, method: "GET")
if case (200..<300) = statusCode {
return response
    } else {
throw NetworkError.UnexpectedStatusCode(statusCode)
}
}

do {
let res = try getResourceFromNetwork()
print(res)
  } catch NetworkError.Unreachable {
print("Unreachable")
  } catch NetworkError.UnexpectedStatusCode(let statusCode) {
print("Unexpected status code \(statusCode)")
  } catch {
print("Unknown problem")
}
}
*/

// Generics
do {
  class ConsumptionLot<Item> {
    var remains: [Item]
    required init(_ items: Item...) {
      self.remains = items
    }
    func choose() -> Item? {
      if remains.isEmpty {
        return nil
      }
      let randomIndex = Int(arc4random_uniform(UInt32(remains.count)))
      return remains.remove(at: randomIndex)
    }
  }
  let lot = ConsumptionLot("A", "B", "C")
  assert(["A", "B", "C"].contains(lot.choose()))
}

// Associated types and type constraints
protocol LotType {
  associatedtype ItemType
  var remains: [ItemType] { get }
  init(_ items: ItemType...)
  func choose() -> ItemType?
}
do {
  class ConsumptionLot<Item>: LotType {
    typealias ItemType = Item
    var remains: [Item]
    required init(_ items: Item...) {
      self.remains = items
    }
    func choose() -> Item? {
      if remains.isEmpty {
        return nil
      }
      let randomIndex = Int(arc4random_uniform(UInt32(remains.count)))
      return remains.remove(at: randomIndex)
    }
  }

  class ConsumptionlessLot<Item>: LotType {
    typealias ItemType = Item
    var remains: [Item]
    required init(_ items: Item...) {
      self.remains = items
    }
    func choose() -> Item? {
      if remains.isEmpty {
        return nil
      }
      let randomIndex = Int(arc4random_uniform(UInt32(remains.count)))
      return remains[randomIndex]
    }
  }
  func pickItems<Lot: LotType>(from lot: Lot, count: Int) -> [Lot.ItemType] {
    var result: [Lot.ItemType] = []
    for _ in (0..<count) {
      lot.choose().map { result.append($0) }
    }
    return result
  }
  let lot = ConsumptionlessLot("A", "B", "C", "D")
  pickItems(from: lot, count: 3).forEach{ i in
    assert(["A", "B", "C", "D"].contains(i))
  }
}

// Access Controll
public class ConsumptionLot<Item> {
  public private(set) var remains: [Item]
  public required init(_ items: Item...) {
    self.remains = items
  }
  public func choose() -> Item? {
    if remains.isEmpty {
      return nil
    }
    let randomIndex = Int(arc4random_uniform(UInt32(remains.count)))
    return remains.remove(at: randomIndex)
  }
}

// Availability
do {
  @available(iOS 9.0, *)
  func someFunction() -> String {
    return "iOS 9 or later"
  }
  var result: String = ""
  if #available(iOS 9.0, *) {
    result = someFunction()
  }
  assert(result == "iOS 9 or later")
}

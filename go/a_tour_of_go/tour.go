package main

import (
	"fmt"
	"sort"
)

// ok
// func add(x int, y int) int {
// 	return x + y
// }

// 同じ型は省略できる
/*
func add(x, y int) int {
	return x + y
}
func main() {
	fmt.Println(add(42, 13))
}
*/

// 複数の戻り値を返せる
/*
func swap(x, y string) (string, string) {
	return y, x
}

func main() {
	a, b := swap("hello", "world")
	fmt.Println(a, b)
}
*/

// named reutn values, return の変数名を省略できる
/*
func split(sum int) (x, y int) {
	x = sum * 4 / 9
	y = sum - x
	return
}

func main() {
	fmt.Println(split(17))
}
*/

// var 変数定義
/*
var c, python, java bool

func main() {
	var i int
	fmt.Println(i, c, python, java)
}
*/

// var 初期値を与える。型を省略することもできる。
/*
var i, j int = 1, 2

func main() {
	var c, python, java = true, false, "no!"
	fmt.Println(i, j, c, python, java)
}
*/

// := で暗黙的な型宣言
/*
func main() {
	var i, j int = 1, 2
	k := 3
	c, python, java := true, false, "no!"

	fmt.Println(i, j, k, c, python, java)
}
*/

// Basic型(組み込み型)
/*
import (
	"fmt"
	"math/cmplx"
)

var (
	ToBe   bool       = false
	MaxInt uint64     = 1<<64 - 1
	z      complex128 = cmplx.Sqrt(-5 + 12i)
)

func main() {
	fmt.Printf("Type: %T Value: %v\n", ToBe, ToBe)
	fmt.Printf("Type: %T Value: %v\n", MaxInt, MaxInt)
	fmt.Printf("Type: %T Value: %v\n", z, z)
	// Type: bool Value: false
	// Type: uint64 Value: 18446744073709551615
	// Type: complex128 Value: (2+3i)
}
*/

// ゼロ値
/*
func main() {
	var i int
	var f float64
	var b bool
	var s string
	fmt.Printf("%v %v %v %q\n", i, f, b, s)
	// 0 0 false ""
}
*/

// 型変換
/*
import (
	"fmt"
	"math"
)

func main() {
	var x, y int = 3, 4
	var f float64 = math.Sqrt(float64(x*x + y*y))
	var z uint = uint(f)
	fmt.Println(x, y, z)
	// 3 4 5

	i := 42
	fl := float64(i)
	u := uint(fl)
	fmt.Println(i, fl, u)
	// 42 42 42
}
*/

// 型推論
/*
func main() {
	v := 42 // change me!
	fmt.Printf("v is of type %T\n", v)
	// v is of type int

	v2 := 3.14 // change me!
	fmt.Printf("v2 is of type %T\n", v2)
	// v2 is of type float64
}
*/

// 定数
/*
const Pi = 3.14

func main() {
	const World = "世界"
	fmt.Println("Hello", World)
	fmt.Println("Happy", Pi, "Day")
	// Hello 世界
	// Happy 3.14 Day

	const Truth = true
	fmt.Println("Go rules?", Truth)
	// Go rules? true
}
*/

/*
const (
	// Create a huge number by shifting a 1 bit left 100 places.
	// In other words, the binary number that is 1 followed by 100 zeroes.
	Big = 1 << 100
	// Shift it right again 99 places, so we end up with 1<<1, or 2.
	Small = Big >> 99
)

func needInt(x int) int { return x*10 + 1 }
func needFloat(x float64) float64 {
	return x * 0.1
}

func main() {
	fmt.Println(needInt(Small))
	// 21
	// fmt.Println(needInt(Big))
	// ./tour.go:178:22: cannot use Big (untyped int constant 1267650600228229401496703205376) as int value in argument to needInt (overflows)
	fmt.Println(needFloat(Small))
	// 0.2
	fmt.Println(needFloat(Big))
	// 1.2676506002282295e+29
}
*/

// for
/*
func main() {
	sum := 0
	for i := 0; i < 10; i++ {
		sum += i
	}
	fmt.Println(sum)
	// 45
}
*/

/*
func main() {
	sum := 1
	for ; sum < 1000; {
		sum += sum
	}
	fmt.Println(sum)
	// 1028
}
*/

// go に while はない
/*
func main() {
	sum := 1
	for sum < 1000 {
		sum += sum
	}
	fmt.Println(sum)
}
*/

// 無限ループ
/*
func main() {
	for {
	}
}
*/

// if
/*
func sqrt(x float64) string {
	if x < 0 {
		return sqrt(-x) + "i"
	}
	return fmt.Sprint(math.Sqrt(x))
}

func main() {
	fmt.Println(sqrt(2), sqrt(-4))
	// 1.4142135623730951 2i
}
*/

// if のスコープ内でのみ有効な変数定義　 v
/*
func pow(x, n, lim float64) float64 {
	if v := math.Pow(x, n); v < lim {
		return v
	}
	return lim
}

func main() {
	fmt.Println(
		pow(3, 2, 10),
		pow(3, 3, 20),
	)
	// 9 20
}
*/

// else でも v は使える
/*
func pow(x, n, lim float64) float64 {
	if v := math.Pow(x, n); v < lim {
		return v
	} else {
		fmt.Printf("%g >= %g\n", v, lim)
		// 27 >= 20
	}
	// can't use v here, though
	return lim
}

func main() {
	fmt.Println(
		pow(3, 2, 10),
		pow(3, 3, 20),
	)
	// 9 20
}
*/

// Exercise: Loops and Functions
/*
func Sqrt(x float64) float64 {
	z := 1.0
	for i := 0; i < 10; i++ {
		z -= (z*z - x) / (2 * z)
		fmt.Println(z)
	}
	return z
}

func main() {
	fmt.Println(Sqrt(10056))
}
*/

// Switch
/*
func main() {
	fmt.Print("Go runs on ")
	switch os := runtime.GOOS; os {
	case "darwin":
		fmt.Println("OS X.")
		// Go runs on OS X.
	case "linux":
		fmt.Println("Linux.")
	default:
		// freebsd, openbsd,
		// plan9, windows...
		fmt.Printf("%s.\n", os)
	}
}
*/

// Switch: break なしで停止する
/*
func main() {
	fmt.Println("When's Saturday?")
	today := time.Now().Weekday()
	switch time.Saturday {
	case today + 0:
		fmt.Println("Today.")
	case today + 1:
		fmt.Println("Tomorrow.")
	case today + 2:
		fmt.Println("In two days.")
	default:
		fmt.Println("Too far away.")
	}
	// When's Saturday?
	// Tomorrow.
}
*/

// Switch: 条件省略
/*
func main() {
	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println("Good morning!")
	case t.Hour() < 17:
		fmt.Println("Good afternoon.")
	default:
		fmt.Println("Good evening.")
	}
	// Good afternoon.
}
*/

// defer: returnまで関数の実行を遅延する (関数の引数は即時評価)
/*
func main() {
	defer fmt.Println("world")

	fmt.Println("hello")
	// hello
	// world
}
*/

// 複数の defer はスタックされる
/*
func main() {
	fmt.Println("counting")

	for i := 0; i < 10; i++ {
		defer fmt.Println(i)
	}

	fmt.Println("done")
}
*/

// counting
// done
// 9
// 8
// 7
// 6
// 5
// 4
// 3
// 2
// 1
// 0

// ポインタ
/*
func main() {
	i, j := 42, 2701

	p := &i         // point to i
	fmt.Println(*p) // read i through the pointer
	// 42
	*p = 21        // set i through the pointer
	fmt.Println(i) // see the new value of i
	// 21

	p = &j         // point to j
	*p = *p / 37   // divide j through the pointer
	fmt.Println(j) // see the new value of j
	// 73
}
*/

// 構造体
/*
type Vertex struct {
	X int
	Y int
}

func main() {
	fmt.Println(Vertex{1, 2})
}
// {1 2}
*/

// 構造体 フィールドの参照
/*
type Vertex struct {
	X int
	Y int
}

func main() {
	v := Vertex{1, 2}
	v.X = 4
	fmt.Println(v.X)
	// 4
}
*/

// 構造体 ポインタアクセス
/*
type Vertex struct {
	X int
	Y int
}

func main() {
	v := Vertex{1, 2}
	p := &v
	p.X = 1e9 // 本来 (*p).X だが省略できる
	fmt.Println(v)
	// {1000000000 2}
}
*/

// 構造体　リテラル
/*
type Vertex struct {
	X, Y int
}

var (
	v1 = Vertex{1, 2}  // has type Vertex
	v2 = Vertex{X: 1}  // Y:0 is implicit
	v3 = Vertex{}      // X:0 and Y:0
	p  = &Vertex{1, 2} // has type *Vertex
)

func main() {
	fmt.Println(v1, p, v2, v3)
	// {1 2} &{1 2} {1 0} {0 0}
}
*/

// Array (固定長)
/*
func main() {
	var a [2]string
	a[0] = "Hello"
	a[1] = "World"
	fmt.Println(a[0], a[1])
	fmt.Println(a)

	primes := [6]int{2, 3, 5, 7, 11, 13}
	fmt.Println(primes)
	// Hello World
	// [Hello World]
	// [2 3 5 7 11 13]
}
*/

// Slice (可変長)
/*
func main() {
	primes := [6]int{2, 3, 5, 7, 11, 13}

	var s []int = primes[1:4]
	fmt.Println(s)
	// [3 5 7]
}
*/

// Slice は Array への参照のようなもの
/*
func main() {
	names := [4]string{
		"John",
		"Paul",
		"George",
		"Ringo",
	}
	fmt.Println(names)

	a := names[0:2]
	b := names[1:3]
	fmt.Println(a, b)

	b[0] = "XXX"
	fmt.Println(a, b)
	fmt.Println(names)
}
// [John Paul George Ringo]
// [John Paul] [Paul George]
// [John XXX] [XXX George]
// [John XXX George Ringo]
*/

// Slice リテラル
/*
func main() {
	q := []int{2, 3, 5, 7, 11, 13}
	fmt.Println(q)

	r := []bool{true, false, true, true, false, true}
	fmt.Println(r)

	s := []struct {
		i int
		b bool
	}{
		{2, true},
		{3, false},
		{5, true},
		{7, true},
		{11, false},
		{13, true},
	}
	fmt.Println(s)
}
// [2 3 5 7 11 13]
// [true false true true false true]
// [{2 true} {3 false} {5 true} {7 true} {11 false} {13 true}]
*/

// Slice
/*
func main() {
	s := []int{2, 3, 5, 7, 11, 13}

	s = s[1:4]
	fmt.Println(s)

	s = s[:2]
	fmt.Println(s)

	s = s[1:]
	fmt.Println(s)
}
// [3 5 7]
// [3 5]
// [5]
*/

// slice len, cap
/*
func main() {
	s := []int{2, 3, 5, 7, 11, 13}
	printSlice(s)

	// Slice the slice to give it zero length.
	s = s[:0]
	printSlice(s)

	// Extend its length.
	s = s[:4]
	printSlice(s)

	// Drop its first two values.
	s = s[2:]
	printSlice(s)
}

func printSlice(s []int) {
	fmt.Printf("len=%d cap=%d %v\n", len(s), cap(s), s)
}

// len=6 cap=6 [2 3 5 7 11 13]
// len=0 cap=6 []
// len=4 cap=6 [2 3 5 7]
// len=2 cap=4 [5 7]
*/

// nil Slices
/*
func main() {
	var s []int
	fmt.Println(s, len(s), cap(s))
	if s == nil {
		fmt.Println("nil!")
	}
}
// [] 0 0
// nil!
*/

// make: 可変長の slice
/*
func main() {
	a := make([]int, 5)
	printSlice("a", a)

	b := make([]int, 0, 5)
	printSlice("b", b)

	c := b[:2]
	printSlice("c", c)

	d := c[2:5]
	printSlice("d", d)

	// fmt.Println(c[:6])
	// panic: runtime error: slice bounds out of range [:6] with capacity 5
}

func printSlice(s string, x []int) {
	fmt.Printf("%s len=%d cap=%d %v\n",
		s, len(x), cap(x), x)
}

// a len=5 cap=5 [0 0 0 0 0]
// b len=0 cap=5 []
// c len=2 cap=5 [0 0]
// d len=3 cap=3 [0 0 0]
*/

// nested slice
/*
func main() {
	// Create a tic-tac-toe board.
	board := [][]string{
		[]string{"_", "_", "_"},
		[]string{"_", "_", "_"},
		[]string{"_", "_", "_"},
	}

	// []string は省略可
	// board := [][]string{
	// 	{"_", "_", "_"},
	// 	{"_", "_", "_"},
	// 	{"_", "_", "_"},
	// }

	// The players take turns.
	board[0][0] = "X"
	board[2][2] = "O"
	board[1][2] = "X"
	board[1][0] = "O"
	board[0][2] = "X"

	for i := 0; i < len(board); i++ {
		fmt.Printf("%s\n", strings.Join(board[i], " "))
	}
}

// X _ X
// O _ X
// _ _ O
*/

// Slice: append

/*
func main() {
	var s []int
	printSlice(s)

	// append works on nil slices.
	s = append(s, 0)
	printSlice(s)

	// The slice grows as needed.
	s = append(s, 1)
	printSlice(s)

	// We can add more than one element at a time.
	s = append(s, 2, 3, 4)
	printSlice(s)
}

func printSlice(s []int) {
	fmt.Printf("len=%d cap=%d %v\n", len(s), cap(s), s)
}

// len=0 cap=0 []
// len=1 cap=1 [0]
// len=2 cap=2 [0 1]
// len=5 cap=6 [0 1 2 3 4] // なぜ cap=6 になるの...?
*/

// range
/*
var pow = []int{1, 2, 4, 8, 16, 32, 64, 128}

func main() {
	for i, v := range pow {
		fmt.Printf("2**%d = %d\n", i, v)
	}
}

// 2**0 = 1
// 2**1 = 2
// 2**2 = 4
// 2**3 = 8
// 2**4 = 16
// 2**5 = 32
// 2**6 = 64
// 2**7 = 128
*/

// range:  不要ならば _  に代入して捨てる
/*
func main() {
	pow := make([]int, 10)
	for i := range pow {
		pow[i] = 1 << uint(i) // == 2**i
	}
	for _, value := range pow {
		fmt.Printf("%d\n", value)
	}
}

// 1
// 2
// 4
// 8
// 16
// 32
// 64
// 128
// 256
// 512
*/

// Exercise: Slices
/*
func Pic(dx, dy int) [][]uint8 {
	ss := make([][]uint8, dy)
	for y := range ss {
		ss[y] = make([]uint8, dx)
		for x := range ss[y] {
			ss[y][x] = uint8((x + y) / 2)
		}
	}
	// fmt.Println(ss)
	return ss
}

func main() {
	pic.Show(Pic)
}
// IMAGE:iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAIAAADTED8xAAACaUlEQVR42uzVMRGAAAzAwLSHf8tgAAf95QVkyVNvNRN50FWBl10V6ABa0AFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIB6ADqEAHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdAA6gBZ0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIBSAcgHYB0ANIB6AAq0AFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgHQA0gFIByAdgA6gAh2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADSAUgHIB2AdADyxy8AAP//YSoDD5pLB7MAAAAASUVORK5CYII=
*/

// Map

/*
type Vertex struct {
	Lat, Long float64
}

var m map[string]Vertex

func main() {
	m = make(map[string]Vertex)
	m["Bell Labs"] = Vertex{
		40.68433, -74.39967,
	}
	fmt.Println(m["Bell Labs"])
	fmt.Println(m)
}

// {40.68433 -74.39967}
// map[Bell Labs:{40.68433 -74.39967}]
*/

// Map リテラル
/*
type Vertex struct {
	Lat, Long float64
}

// var m = map[string]Vertex{
// 	"Bell Labs": Vertex{
// 		40.68433, -74.39967,
// 	},
// 	"Google": Vertex{
// 		37.42202, -122.08408,
// 	},
// }

// 型名の省略
var m = map[string]Vertex{
	"Bell Labs": {40.68433, -74.39967},
	"Google":    {37.42202, -122.08408},
}

func main() {
	fmt.Println(m)
}

// map[Bell Labs:{40.68433 -74.39967} Google:{37.42202 -122.08408}]
*/

// Map の操作 (挿入、更新、取得、削除)
/*
func main() {
	m := make(map[string]int)

	m["Answer"] = 42
	fmt.Println("The value:", m["Answer"])

	m["Answer"] = 48
	fmt.Println("The value:", m["Answer"])

	delete(m, "Answer")
	fmt.Println("The value:", m["Answer"])

	// 1番目: 要素, 2番目: 存在確認
	v, ok := m["Answer"]
	fmt.Println("The value:", v, "Present?", ok)
}

// The value: 42
// The value: 48
// The value: 0
// The value: 0 Present? false
*/

// Exercise: Maps
/*
import (
	"golang.org/x/tour/wc"
	"strings"
)

func WordCount(s string) map[string]int {
	// 1.
	// splited := strings.Fields(s)
	// wc_map := make(map[string]int)
	// for _, key := range splited {
	// 	if _, ok := wc_map[key]; ok == true {
	// 		wc_map[key] += 1
	// 	} else {
	// 		wc_map[key] = 1
	// 	}
	// }
	// return wc_map

	// 2.
	m := make(map[string]int)
	for _, key := range strings.Fields(s) {
		m[key]++
	}
	return m
}

func main() {
	wc.Test(WordCount)
}

// PASS
//  f("I am learning Go!") =
//   map[string]int{"Go!":1, "I":1, "am":1, "learning":1}
// PASS
//  f("The quick brown fox jumped over the lazy dog.") =
//   map[string]int{"The":1, "brown":1, "dog.":1, "fox":1, "jumped":1, "lazy":1, "over":1, "quick":1, "the":1}
// PASS
//  f("I ate a donut. Then I ate another donut.") =
//   map[string]int{"I":2, "Then":1, "a":1, "another":1, "ate":2, "donut.":2}
// PASS
//  f("A man a plan a canal panama.") =
//   map[string]int{"A":1, "a":2, "canal":1, "man":1, "panama.":1, "plan":1}
*/

// 関数も変数
/*
func compute(fn func(float64, float64) float64) float64 {
	return fn(3, 4)
}

func main() {
	hypot := func(x, y float64) float64 {
		return math.Sqrt(x*x + y*y)
	}
	fmt.Println(hypot(5, 12))

	fmt.Println(compute(hypot))
	fmt.Println(compute(math.Pow))
}

// 13
// 5
// 81
*/

// Go の関数はクロージャ(closure)
/*
func adder() func(int) int {
	sum := 0
	return func(x int) int {
		sum += x
		return sum
	}
}

func main() {
	pos, neg := adder(), adder()
	for i := 0; i < 10; i++ {
		fmt.Println(
			pos(i),
			neg(-2*i),
		)
	}
}

// 0 0
// 1 -2
// 3 -6
// 6 -12
// 10 -20
// 15 -30
// 21 -42
// 28 -56
// 36 -72
// 45 -90
*/

/*
// Exercise: Fibonacci closure
// fibonacci is a function that returns
// a function that returns an int.
func fibonacci() func() int {
	a, b := 1, 0
	return func() int {
		a, b = b, a+b
		return a
	}
}

func main() {
	f := fibonacci()
	for i := 0; i < 10; i++ {
		fmt.Println(f())
	}
}
// 0
// 1
// 1
// 2
// 3
// 5
// 8
// 13
// 21
// 34
*/

// Methods

// Exercise: Stringers
/*
type IPAddr [4]byte

// TODO: Add a "String() string" method to IPAddr.
// func (ip IPAddr) String() string {
// 	strings.Join(ip, ",")
// }
func (ip IPAddr) String() string {
	// 1.
	// str := ""
	// for _, v := range ip {
	// 	str += fmt.Sprintf("%v", v) + "."
	// }
	// return str[:len(str)-1]

	// 2.
	// str := make([]string, 4)
	// for i, v := range ip {
	// 	str[i] = strconv.Itoa(int(v)) // uint8 -> string 変換...
	// }
	// return strings.Join(str, ".")

	// 3.
	return fmt.Sprintf("%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3])
}

func main() {
	hosts := map[string]IPAddr{
		"loopback":  {127, 0, 0, 1},
		"googleDNS": {8, 8, 8, 8},
	}
	for name, ip := range hosts {
		fmt.Printf("%v: %v\n", name, ip)
	}

	// arr_byte := [4]byte{127, 0, 0, 1}
	// arr_str := make([]string, 4)
	// for i, v := range arr_byte {
	// 	s := strconv.Itoa(int(v)) // uint8 -> string 変換...
	// 	arr_str[i] = s
	// }
	// fmt.Printf("%T, %v\n", arr_str, arr_str)
	// fmt.Println(strings.Join(arr_str, ","))
	// []string, [127 0 0 1]
	// 127,0,0,1
*/

// Errors
/*
type MyError struct {
	When time.Time
	What string
}

func (e *MyError) Error() string {
	return fmt.Sprintf("at %v, %s",
		e.When, e.What)
}

func run() error {
	return &MyError{
		time.Now(),
		"it didn't work",
	}
}

func main() {
	if err := run(); err != nil {
		fmt.Println(err)
	}
}

// at 2022-05-31 09:39:06.735282 +0900 JST m=+0.000129168, it didn't work
*/

//Exercise: Errors
/*
type ErrNegativeSqrt float64

func (e ErrNegativeSqrt) Error() string {
	return fmt.Sprintf("cannot Sqrt negative number: %v", float64(e))
}
func Sqrt(x float64) (float64, error) {
	if x < 0 {
		return 0, ErrNegativeSqrt(x)
	}

	z := 1.0
	for i := 0; i < 10; i++ {
		z -= (z*z - x) / (2 * z)
	}
	return z, nil
}

func main() {
	fmt.Println(Sqrt(2))
	fmt.Println(Sqrt(-2))
}

// 1.4142135623730951 <nil>
// 0 cannot Sqrt negative number: -2
*/

// Readers
/*
func main() {
	r := strings.NewReader("Hello, Reader!")

	b := make([]byte, 8)
	for {
		n, err := r.Read(b)
		fmt.Printf("n = %v err = %v b = %v\n", n, err, b)
		fmt.Printf("b[:n] = %q\n", b[:n])
		if err == io.EOF {
			break
		}
	}
}

// n = 8 err = <nil> b = [72 101 108 108 111 44 32 82]
// b[:n] = "Hello, R"
// n = 6 err = <nil> b = [101 97 100 101 114 33 32 82]
// b[:n] = "eader!"
// n = 0 err = EOF b = [101 97 100 101 114 33 32 82]
// b[:n] = ""
*/

/*
import (
	"fmt"
	"golang.org/x/tour/reader"
)

type MyReader struct{}

// TODO: Add a Read([]byte) (int, error) method to MyReader.
func (r MyReader) Read(b []byte) (int, error) {
	for i := range b {
		b[i] = 'A'
	}
	return len(b), nil
}

func main() {
	reader.Validate(MyReader{})
	// OK!

	r := MyReader{}
	b := make([]byte, 8)
	for {
		n, _ := r.Read(b)
		fmt.Printf("%q", b[:n])
		// "AAAAAAAA" "AAAAAAAA" "AAAAAAAA"...
	}
}
*/

// Exercise: rot13Reader
/*
type rot13Reader struct {
	r io.Reader
}

func (rot13 rot13Reader) Read(b []byte) (int, error) {
	len, error := rot13.r.Read(b)
	for i, v := range b {
		switch {
		case v >= 'A' && v < 'N', v >= 'a' && v < 'n':
			b[i] += 13
		case v >= 'N' && v <= 'Z', v >= 'n' && v <= 'z':
			b[i] -= 13
		}
	}
	return len, error
}

func main() {
	s := strings.NewReader("Lbh penpxrq gur pbqr!")
	r := rot13Reader{s}
	io.Copy(os.Stdout, &r)
	// You cracked the code!%
}
*/

// Image
/*
func main() {
	m := image.NewRGBA(image.Rect(0, 0, 100, 100))
	fmt.Println(m.Bounds())
	fmt.Println(m.At(0, 0).RGBA())
}

// (0,0)-(100,100)
// 0 0 0 0
*/

// Exercise: Images
/*
type Image struct{}

func (i Image) ColorModel() color.Model {
	return color.RGBAModel
}

func (i Image) Bounds() image.Rectangle {
	return image.Rect(0, 0, 255, 255)

}
func (i Image) At(x, y int) color.Color {
	return color.RGBA{byte(x), byte(y), 255, 255}
}

func main() {
	m := Image{}
	pic.ShowImage(m)
}

// IMAGE:iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAIAAADTED8xAAACCklEQVR42uzTUQkAMAxDwQzq3/LG/usgd4QKKLxJ7knMOjf/QCsBIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgAAQgAAYAAQAAgABAACAAEAAIAAYAAQAAgABAACAAEAAIAAYAAQAAgABAACAAEAAIAAYAAQAAgABAACAAEAAIAAYAAQAAgABAACAAEAAIAAYAAQAAgABAACAAEAAIAAYAAQAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAkAAAkAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAAgABAACAAGAAEAAIAAQAALwBAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAAEAAIAAQAAgABgABAACAA2LwAAAD//0bRBv4eCWa3AAAAAElFTkSuQmCC
*/

// strconv
/*
import (
	"fmt"
	"strconv"
)

func atoi(s string) {
	v, err := strconv.Atoi(s)
	fmt.Printf("%v:\n", s)
	fmt.Printf("%T, %v\n", v, v)
	fmt.Printf("%T, %v\n", err, err)
}

func main() {
	str := "sss"
	atoi(str)

	str2 := "123"
	atoi(str2)
}

// sss:
// int, 0
// *strconv.NumError, strconv.Atoi: parsing "sss": invalid syntax
// 123:
// int, 123
// <nil>, <nil>
*/

// map
type KV map[string]int
type KVs []KV

func (p KVs) Len() int           { return len(p) }
func (p KVs) Less(i, j int) bool { return p[i].Values < p[j] }

func main() {
	mm := make(KVs, 0)
	mm = append(mm, KV{"a": 234})
	mm = append(mm, KV{"b": 123})
	mm = append(mm, KV{"c": 345})
	fmt.Printf("%T, %v\n", mm, mm)

	sort.Sort(sort.Reverse(mm))
}

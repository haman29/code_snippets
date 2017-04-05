package main

import (
	"fmt"
	"strings"
)

func main() {
	// arr := [...]string{"a", "b", "c", "d"}
	// fmt.Println(arr)

	// arr2 := []string{"a", "b", "c", "d"}
	// fmt.Println(arr2)

	// arr3 := [][]string{
		// {"a", "b", "c", "d"},
		// {"a", "b", "c", "d"},
		 // }
	// fmt.Println(arr3)

	str := `+------+
|      |
| 0708 |
|      |
+------+`
	fmt.Println(str)
	fmt.Println(mark_room(str, "0708"))
}

func mark_room(str string, room string) string {
	width := strings.Index(str, "\n")
	pos := strings.Index(str, room)
	x := pos / width
	y := pos % width

	new_pos := (x+1)*width+(y+1)

	slice := strings.Split(str, "")
	for i :=0; i < len(room); i++ {
		slice[new_pos + i] = "-"
	}
	return strings.Join(slice, "")
}

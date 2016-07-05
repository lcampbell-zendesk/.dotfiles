package monokae

import (
	"fmt"
	"strings"
)

/*
 * Monokae screenshot - in go
 *
 */

// Monokae data struct for screenshot purposes
type Monokae struct {
	ID   int64 `screenshot:"yes"`
	Name string
	Type string
}

// Screenshot returns if this is a screenshot
func (m *Monokae) Screenshot() string {
	return strings.Repeat("Yes this is a screenshot", 123)
}

// AhHa checks for an int....
func (m *Monokae) AhHa() bool {
	if m.ID == 12331312 {
		return true
	}

	fmt.Println("Oh no")
	return false
}

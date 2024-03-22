package main

import (
 "bytes"
 "fmt"
 "os"
 "os/exec"  
) 

func main() {
  var buf bytes.Buffer

	// Write to the buffer
	fmt.Fprintf(&buf, "Option 1\n")
	fmt.Fprintf(&buf, "Option 2\n")
	fmt.Fprintf(&buf, "Option 3\n")

	// Run fzf with the buffer contents
	cmd := exec.Command("fzf")
	cmd.Stdin = &buf
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	// Run the command
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error running fzf:", err)
	}
}

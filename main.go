package main

import (
	"fmt"
	"os/exec"
)

func main() {
  cmd := exec.Command("bash", "-c", "pactl list short sinks")

  out, err := cmd.Output()

  if err != nil {
    panic(err)
  }

  fmt.Println(string(out))
}

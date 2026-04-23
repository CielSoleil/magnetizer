package main

import (
	"flag"
	"fmt"
)

func main() {
	hash := flag.String("-hash", "", "The magnet hash you have")
	flag.Parse()

	if *hash != "" {
		var magnet string
		magnet = fmt.Sprintf("magnet:?xt=urn:btih:%s", *hash)
		fmt.Println(magnet)
	}
}

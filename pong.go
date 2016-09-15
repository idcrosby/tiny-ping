package main

import (
	"fmt"
	"os"
	"net/http"
)

func main() {
	fmt.Printf("Starting pong server...\n")
	msg := os.Getenv("MSG")
	if msg == "" {
		msg = "Very exciting default message."
	}
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Printf("Request received.\n")
		fmt.Fprintf(w, msg)
	})
	fmt.Printf("Listening on port 8080\n")
	http.ListenAndServe(":8080", nil)
}
package main

//go:generate templ generate

import (
	"fmt"
	"net/http"

	"github.com/a-h/templ"
	"github.com/mikemehl.com/components"
)

func main() {
	fmt.Println("Hello, World!")
	http.Handle("/", templ.Handler(components.MainPage()))
	http.Handle("/intro", templ.Handler(components.Intro()))
	http.Handle("/experience", templ.Handler(components.Experience()))
	http.Handle("/education", templ.Handler(components.Education()))
	http.Handle("/skills", templ.Handler(components.Skills()))
	http.Handle("/resume", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, "./static/resume.pdf")
	}))
	http.Handle("/blog", http.RedirectHandler("https://mikemehl.prose.sh", http.StatusFound))
	http.ListenAndServe(":8080", nil)
}

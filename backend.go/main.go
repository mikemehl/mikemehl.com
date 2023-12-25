package main

import (
	"html/template"
	"net/http"
)

func main() {
	templates := InitTemplates()
	for path, template := range templates {
		http.HandleFunc("/"+path, func(w http.ResponseWriter, r *http.Request) {
			template.Execute(w, nil)
		})
	}
}

func InitTemplates() map[string]*template.Template {
	indexTemplate := template.Must(template.ParseGlob("templates/index.html"))
	educationTemplate := template.Must(template.ParseGlob("templates/education.html"))
	experienceTemplate := template.Must(template.ParseGlob("templates/experience.html"))
	introTemplate := template.Must(template.ParseGlob("templates/intro.html"))
	skillsTemplate := template.Must(template.ParseGlob("templates/skills.html"))

	return map[string]*template.Template{
		"index":      indexTemplate,
		"education":  educationTemplate,
		"experience": experienceTemplate,
		"intro":      introTemplate,
		"skills":     skillsTemplate,
	}
}

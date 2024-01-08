package data

type SkillSet struct {
	Langs     LanguageList
	Platforms []string
	Tools     []string
}

type LanguageList struct {
	Expert     []string
	Proficient []string
	Basic      []string
}

var languages = LanguageList{
	Expert: []string{
		"C",
		"C++",
		"Python",
		"Lua",
		"Bash",
	},
	Proficient: []string{
		"Rust",
		"Go",
		"Elixir",
		"Scheme",
	},
	Basic: []string{
		"HTML",
		"CSS",
		"Typescript/JavaScript",
		"SQL",
		"Haskell",
	},
}

var platforms = []string{
	"Linux",
	"Buildroot",
	"Nerves",
	"Zephyr",
	"AWS IoT",
	"Cellular",
	"LoRa",
	"ESP32",
	"IMX6",
}

var tools = []string{
	"Git",
	"Jira",
	"CircleCI",
	"GH Actions",
	"Docker",
	"Caddy",
	"Ansible",
	"GDB",
}

var Skills = SkillSet{
	Langs:     languages,
	Platforms: platforms,
	Tools:     tools,
}

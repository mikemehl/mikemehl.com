package data

type MusicProj struct {
	Name        string
	Genres      string
	StartYear   string
	EndYear     string
	Description string
	Player      string
	Links       []string
}

var ecf = MusicProj{
	Name:        "Euclid C Finder!",
	Genres:      "Mathcore, Grindcore, Metalcore, Skramzo",
	StartYear:   "2017",
	EndYear:     "",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var monowire = MusicProj{
	Name:        "Monowire",
	Genres:      "Electronic, Jungle, Breakcore, IDM, Rave",
	StartYear:   "2023",
	EndYear:     "",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var egarra = MusicProj{
	Name:        "Egarra",
	Genres:      "Mathcore, Hardcore, Metalcore",
	StartYear:   "2015",
	EndYear:     "2016",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var mherdad = MusicProj{
	Name:        "Mherdad",
	Genres:      "Electronic, Breakcore, Rave",
	StartYear:   "2011",
	EndYear:     "2014",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var neckfirst = MusicProj{
	Name:        "Neck First",
	Genres:      "Mathcore, Grindcore, Skramzo",
	StartYear:   "2012",
	EndYear:     "2014",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var ktsg = MusicProj{
	Name:        "Kiss The Sky Goodbye",
	Genres:      "Skramzo, Grindcore, Mathcore",
	StartYear:   "2008",
	EndYear:     "2009",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var forwantof = MusicProj{
	Name:        "For Want Of",
	Genres:      "Ambient, Post Rock",
	StartYear:   "2007",
	EndYear:     "2012",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var irb = MusicProj{
	Name:        "I'd Rather Be",
	Genres:      "Metalcore",
	StartYear:   "2006",
	EndYear:     "2008",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var thistime = MusicProj{
	Name:        "This Time We Die",
	Genres:      "Metalcore, Deathcore",
	StartYear:   "2006",
	EndYear:     "2006",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var motwerks = MusicProj{
	Name:        "Motwerks",
	Genres:      "Metalcore, Deathcore",
	StartYear:   "2006",
	EndYear:     "2006",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var beware = MusicProj{
	Name:        "Beware The Ides of March",
	Genres:      "Grindcore, Mathcore, Metalcore",
	StartYear:   "2005",
	EndYear:     "2007",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var dayinoct = MusicProj{
	Name:        "A Day In October",
	Genres:      "Pop Punk",
	StartYear:   "2005",
	EndYear:     "2006",
	Description: "",
	Player:      "",
	Links:       []string{},
}

var Music = []MusicProj{
	ecf,
	monowire,
	egarra,
	mherdad,
	neckfirst,
	ktsg,
	forwantof,
	irb,
	thistime,
	motwerks,
	beware,
	dayinoct,
}

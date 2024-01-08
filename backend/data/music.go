package data

type MusicLink struct {
	Title string
	Url   string
}

type MusicProj struct {
	Name        string
	Genres      string
	StartYear   string
	EndYear     string
	Description string
	Player      string
	Links       []MusicLink
}

var ecf = MusicProj{
	Name:        "Euclid C Finder!",
	Genres:      "Mathcore, Grindcore, Metalcore, Skramzo",
	StartYear:   "2017",
	EndYear:     "",
	Description: "Main project, mathgrind for the masses. Started this as a solo project and recruited the best friends along the way.",
	Player:      "<iframe style=\"border: 0; width: 100%; height: 42px;\" src=\"https://bandcamp.com/EmbeddedPlayer/album=1661512236/size=small/bgcol=333333/linkcol=0f91ff/transparent=true/\" seamless><a href=\"https://euclidcfinder.com/album/the-mirror-my-weapon-i-love-you\">The Mirror, My Weapon, I Love You by Euclid C Finder</a></iframe>",
	Links: []MusicLink{
		{"Website", "https://euclidcfinder.com"},
		{"Bandcamp", "https://euclidcfinder.bandcamp.com"},
		{"Spotify", "https://open.spotify.com/artist/5h7ZUEHkfkxLqsXzt5VCdV"},
		{"Instagram", "https://www.instagram.com/euclidcfinder"},
		{"Facebook", "https://www.facebook.com/euclidcfinder"},
	},
}

var monowire = MusicProj{
	Name:        "Monowire",
	Genres:      "Electronic, Jungle, Breakcore, IDM, Rave",
	StartYear:   "2023",
	EndYear:     "",
	Description: "Title I'm using for any electronic music I make from here out. Just started dabbling again, so nothing here yet.",
	Player:      "",
	Links:       []MusicLink{},
}

var egarra = MusicProj{
	Name:        "Egarra",
	Genres:      "Mathcore, Hardcore, Metalcore",
	StartYear:   "2015",
	EndYear:     "2016",
	Description: "Kiss The Surf Goodbye. Another Kyle band that didn't last long. We played a few shows and recorded a few songs, but never released anything.",
	Player:      `<iframe style="border: 0; width: 100%; height: 42px;" src="https://bandcamp.com/EmbeddedPlayer/album=1673701270/size=small/bgcol=333333/linkcol=0f91ff/track=2039406656/transparent=true/" seamless><a href="https://egarra.bandcamp.com/album/demo">Demo by Egarra</a></iframe>`,
	Links: []MusicLink{
		{"Bandcamp", "https://egarra.bandcamp.com"},
	},
}

var mherdad = MusicProj{
	Name:        "Mherdad",
	Genres:      "Electronic, Breakcore, Rave",
	StartYear:   "2011",
	EndYear:     "2014",
	Description: "My previous electronic project. Breakcore via renoise (and chiptune via LSDJ). I was learning as I went and it shows. Played a few raves and clubs along with one CCAS show. This level of drum programming was exhausting though, so I eventually burnt out. I still love this stuff though.",
	Player:      `<iframe style="border: 0; width: 100%; height: 42px;" src="https://bandcamp.com/EmbeddedPlayer/album=1853548959/size=small/bgcol=333333/linkcol=0f91ff/transparent=true/" seamless><a href="https://mherdad.bandcamp.com/album/mherdad">mherdad. by Mherdad</a></iframe>`,
	Links: []MusicLink{
		{"Bandcamp", "https://mherdad.bandcamp.com"},
		{"Soundcloud", "https://soundcloud.com/mherdad"},
	},
}

var neckfirst = MusicProj{
	Name:        "Neck First",
	Genres:      "Mathcore, Grindcore, Skramzo",
	StartYear:   "2012",
	EndYear:     "2014",
	Description: "Fuck yeah diy mathcore. I joined this band as a stranger to most of the members and made some awesome friends along the way. Favorite band I've been in that is no longer around.",
	Player:      `<iframe style="border: 0; width: 100%; height: 42px;" src="https://bandcamp.com/EmbeddedPlayer/album=1228568980/size=small/bgcol=333333/linkcol=0f91ff/track=2591547000/transparent=true/" seamless><a href="https://neckfirst.bandcamp.com/album/i-can-feel-my-skin-crawl">I Can Feel My Skin Crawl by Neck First</a></iframe>`,
	Links: []MusicLink{
		{"Bandcamp", "https://neckfirst.bandcamp.com"},
	},
}

var ktsg = MusicProj{
	Name:        "Kiss The Sky Goodbye",
	Genres:      "Skramzo, Grindcore, Mathcore",
	StartYear:   "2008",
	EndYear:     "2009",
	Description: "Oh boy. This band. Started as Kyle's project, I joined, a few member changes, JB joined, and we had the first incarnation of the unholy trio. We played live every week and practiced almost everyday. We were very violent live. The most intense band I've been in personality wise by a long shot. The FUCK EP is still in my top 5 things I've released. That said, this intensity couldn't last long. We were too young and too pissed.",
	Player:      `<iframe style="border: 0; width: 100%; height: 42px;" src="https://bandcamp.com/EmbeddedPlayer/album=733280090/size=small/bgcol=333333/linkcol=0f91ff/transparent=true/" seamless><a href="https://kisstheskygoodbye.bandcamp.com/album/fuck">FUCK by Kiss The Sky Goodbye</a></iframe>`,
	Links: []MusicLink{
		{"Bandcamp", "https://kisstheskygoodbye.bandcamp.com/album/fuck"},
	},
}

var forwantof = MusicProj{
	Name:        "For Want Of",
	Genres:      "Ambient, Post Rock",
	StartYear:   "2007",
	EndYear:     "2012",
	Description: "Started as me dicking around with delay and a drum machine in my bedroom and went on here and there for a few years. Friends joined, played a single show, tried to make things more serious later but it wasn't meant to be. Don't think the recordings are up anywhere, but it was very Explosions In The Sky but minimal and simplified lol.",
	Player:      "",
	Links:       []MusicLink{},
}

var irb = MusicProj{
	Name:        "I'd Rather Be",
	Genres:      "Metalcore",
	StartYear:   "2006",
	EndYear:     "2008",
	Description: "High school metalcore band fuck yeah. Kyle recruited me into this and I made some lifelong friends along the way. This shit is so fun, I wish I had recordings.",
	Player:      "",
	Links:       []MusicLink{},
}

var thistime = MusicProj{
	Name:        "This Time We Die",
	Genres:      "Metalcore, Deathcore",
	StartYear:   "2006",
	EndYear:     "2006",
	Description: "Band I randomly joined in high school for a few months. I don't really remember much of it.",
	Player:      "",
	Links:       []MusicLink{},
}

var motwerks = MusicProj{
	Name:        "Motwerks",
	Genres:      "Metalcore, Deathcore",
	StartYear:   "2006",
	EndYear:     "2006",
	Description: "Topher's deathcore project! I don't remember much about this one either except that Topher was awesome and I attended at least one practice. No music that I'm aware of out there. By the way, MOTWERKS is SKREW TOM lol myspace.",
	Player:      "",
	Links:       []MusicLink{},
}

var beware = MusicProj{
	Name:        "Beware The Ides of March",
	Genres:      "Grindcore, Mathcore, Metalcore",
	StartYear:   "2005",
	EndYear:     "2007",
	Description: "Baby's first drum machine grind band. We had a few incarnations but the classic was me on guitar/programming and Kyle on vocals. Later we had some other folks joined and moved away from traditional grind towards the white belt/scene grind that I love and hold so dear. There were recordings, but I think they're lost to time.",
	Player:      "",
	Links:       []MusicLink{},
}

var dayinoct = MusicProj{
	Name:        "A Day In October",
	Genres:      "Pop Punk",
	StartYear:   "2005",
	EndYear:     "2006",
	Description: "My first real band. Joined this band as second guitar, played a few shows, recorded a demo, and played the county battle of the band that year. Fuck yeah.",
	Player:      "",
	Links:       []MusicLink{},
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

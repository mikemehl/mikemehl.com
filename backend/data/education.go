package data

type Institution struct {
	Name       string
	Address    string
	StartDate  string
	EndDate    string
	Degrees    []string
	Highlights []string
	Gpa        string
}

var umbc = Institution{
	Name:    "University of Maryland, Baltimore County",
	Address: "1000 Hilltop Circle, Baltimore MD 21250",
	Degrees: []string{
		"B.S. Computer Science", "B.A. Mathematics",
	},
	StartDate: "August 2016",
	EndDate:   "December 2018",
	Gpa:       "3.8",
	Highlights: []string{
		"Computer Science Department Magna Cum Laude",
		"Pi Mu Epsilon Mathematics Honor Society",
	},
}

var aacc = Institution{
	Name:    "Anne Arundel Community College",
	Address: "101 College Parkway, Arnold MD 21012",
	Degrees: []string{
		"A.S. Computer Science", "A.S. Mathematics",
	},
	StartDate: "January 2014",
	EndDate:   "July 2016",
	Gpa:       "3.7",
	Highlights: []string{
		"Mathematics Department Award 2016",
	},
}

var Educations = []Institution{
	umbc, aacc,
}

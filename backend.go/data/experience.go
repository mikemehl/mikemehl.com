package data

type Experience struct {
	Company     string
	Position    string
	Address     string
	Brief       string
	Website     string
	Description string
	StartDate   string
	EndDate     string
	Highlights  []string
}

var very = Experience{
	Company:  "Very",
	Position: "Firmware Engineer",
	Address:  "Remote",
	Brief:    "An IoT development firm.",
	Website:  "https://www.verypossible.com/",
	Description: `
      I worked on the firmware for several IoT products for various clients, including 
      utility, air quality, safety, and industrial applications. As a solo firmware engineer 
      on most projects, I worked closely with hardware engineers, web developers, and 
      graphic designers to develop new products and write firmware that meets clients' 
      needs, while keeping a holistic system perspective. This role also featured daily
      client interactions and travel for integration sessions.
`,
	StartDate: "August 2021",
	EndDate:   "November 2023",
	Highlights: []string{
		`Utilized Buildroot and Nerves/Elixir in the development of an air quality monitoring
   system for a custom hardware platform utilizing a Quectel cellular modem to connect with AWS.
   This system was used to add connectivity to an existing line of products. Included integration
   with a third party OTA platform.`,
		`Improved the performance of a bare metal embedded system for a preseed client. The product was
 an IoT utility monitoring system built on an ESP32 based platform, utilizing a LoRa radio.
 After successfully improving their system, the client was able to secure seed funding and
 successfully bring the product to market.`,
		`Developed test firmware to aid with production line verification of functionality.`,
		`Aided clients in preparing their products for FCC and UL certification.`,
	},
}

var northrop = Experience{
	Company:  "Northrop Grumman",
	Position: "Embedded Software Engineer",
	Address:  "7323 Aviation Blvd, Baltimore MD 21240",
	Brief:    "A Department of Defenses and Aerospace contractor.",
	Website:  "https://www.northropgumman.com/",
	Description: `
    I worked on the embedded software for several large radar systems, with areas of functionality including signal processing,
    radio control, target tracking, and data transport. As a key engineer on the team, 
    I worked closely with systems engineers to implement new algorithms, perform lab 
    testing, and improve performance. `,
	StartDate: "July 2017",
	EndDate:   "August 2021",
	Highlights: []string{
		`Architected and implemented a new search and target tracking algorithm in C++. The algorithm involved partitioning of
     the search volume to utilize cutting edge hardware capabilities. Worked closely with systems and integration engineers to
     implement the algorithm, develop host based test systems, optimize for the target platform, and verify functionality
     during integration.`,
		`Worked with a team to port a legacy radar system new hardware, including updating the software from a VxWorks based system to a
     custom Linux distribution. `,
		`Developed a testing application for replaying recorded radar data, allowing for rapid development and testing of new algorithms
     from user workstations. This helped several engineers deliver early by allowing them to work independently from the integration lab. `,
	},
}

var mathlab = Experience{
	Company:  "Anne Arundel Community College",
	Position: "Mathematics Tutor",
	Address:  "101 College Parkway, Arnold MD 21012",
	Brief:    "Educational institution.",
	Website:  "https://www.aacc.edu/",
	Description: `
    I tutored students at AACC's Math Lab, a walk in tutoring environment. I helped students 
    to master the skills necessary for success in all mathematics subjects, from basic 
    algebra to differential equations. `,
	StartDate:  "August 2016",
	EndDate:    "August 2017",
	Highlights: []string{},
}

var Experiences = []Experience{
	very,
	northrop,
	mathlab,
}

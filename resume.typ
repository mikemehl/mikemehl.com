#let addresssection(address) = {
    [ #emph(address.street) #emph( address.city ), #emph( address.state ) #emph( address.zip ) ]
}

#let topsection(name, address, contact, objective) = {
  [
    = #name
    #addresssection(address) \
    #link(contact.email)[#contact.email] #link(contact.github)[github] #link(contact.website)[website]

    #objective

  ]
}

#let experience(address, company, description, start, end, position, highlights) = {
  [
    === #company
    #position #emph( start ) - #emph( end ) \
    #addresssection(address) \
    #description \
    #for highlight in highlights {
      [- #highlight]
    }
  ]
}

#let experiencesection(experiences) = {
  [
    == Experience
    #for e in experiences {
      experience(e.address, e.company, e.description, e.start_date, e.end_date, e.position, e.highlights)
    }
  ]
}

#let education(address, name, start, end, highlights) = {
  [
    === #name
    #emph( start ) - #emph( end ) \
    #addresssection(address) \
    #for highlight in highlights {
      [- #highlight]
    }
  ]
}

#let educationsection(educations) = {
  let first = educations.at(0)
  let second = educations.at(1)
  [
    == Education
    #grid(
    columns: (1fr, 1fr),
    rows: 1,
    education(first.address, first.name, first.start_date, first.end_date, first.highlights),
    education(second.address, second.name, second.start_date, second.end_date, second.highlights))
  ]
}

#let interestssection(interests) = {
  [
    == Interests
    #grid(
        columns: (1fr, 1fr), 
        rows: 1,
        [
          *Professional* 
          #for interest in interests.professional {
            [- #interest]
          }
        ],
        [
          *Personal* 
          #for interest in interests.personal {
            [- #interest]
          }
        ]
        )
      ]
}

#let skillssection(skills) = {
  [ 
    == Skills
    #grid(
    columns: (1fr, 1fr, 1fr), 
    rows: 1,
    [ 
    *Programming Languages*
    #for category in skills.languages {
      let category = category.at( 0)
      let skill_list = category.at( 1 )
      for skill in skill_list {
        [- #skill]
      }
    } ],
    [ 
    *Platforms*
    #for skill in skills.platforms {
      [- #skill]
    } ],
    [ 
    *Tools*
    #for skill in skills.tools {
      [- #skill]
    } ])
  ]
}

#let data = yaml("data/resume.yaml")

#set par(
  justify: true,
)
#set text(
    font: ("Fira Sans"),
    lang: "en",
    size: 11pt,
    fallback: false
  )

#set page(
  paper: "a4",
  margin: (
    top: 0.5in,
    bottom: 0.5in,
    x: 0.25in
  )
)

#set list(
  tight: true,
  indent: 1em
)

#topsection(data.name, data.address, data.contact, data.objective)
#experiencesection(data.experience) 
#educationsection(data.education)
#grid(
  columns: (1fr, 1fr),
  rows: 1,
  skillssection(data.skills),
  interestssection(data.interests))

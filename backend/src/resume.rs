use anyhow::Result;
use serde::Deserialize;

const RESUME_STR: &str = include_str!("../../data/resume.toml");

#[derive(Deserialize, Clone)]
pub enum SkillLevel {
    basic,
    proficient,
    expert,
}

#[derive(Deserialize, Clone)]
pub enum Skill {
    language { name: String, level: SkillLevel },
    platform { name: String },
    tool { name: String },
}

#[derive(Deserialize, Clone)]
pub enum Interest {
    professional { name: String },
    personal { name: String },
}

#[derive(Deserialize, Clone)]
pub struct Address {
    pub street: String,
    pub city: String,
    pub state: String,
    zip: String,
}

#[derive(Deserialize, Clone)]
pub struct Education {
    pub name: String,
    pub degrees: Vec<String>,
    pub gpa: f32,
    pub start_date: String,
    pub end_date: String,
    pub highlights: Vec<String>,
    pub address: Address,
}

#[derive(Deserialize, Clone)]
pub struct Experience {
    pub company: String,
    pub description: String,
    pub position: String,
    pub start_date: String,
    pub end_date: String,
    pub highlights: Vec<String>,
    pub address: Address,
}

#[derive(Deserialize, Clone)]
pub struct Contact {
    pub phone: String,
    pub email: String,
    pub website: Option<String>,
    pub github: Option<String>,
    pub sourcehut: Option<String>,
}

#[derive(Deserialize, Clone)]
pub struct Resume {
    pub name: String,
    pub address: Address,
    pub objective: String,
    pub education: Vec<Education>,
    pub experience: Vec<Experience>,
    pub interests: Vec<Interest>,
    pub skills: Vec<Skill>,
}

impl std::fmt::Display for Address {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{}, {}, {} {}",
            self.street, self.city, self.state, self.zip
        )
    }
}

pub fn get() -> Result<Resume> {
    Ok(toml::from_str(RESUME_STR)?)
}

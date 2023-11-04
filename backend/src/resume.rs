use anyhow::Result;
use serde::Deserialize;

const RESUME_STR: &str = include_str!("../../data/resume.yaml");

#[derive(Deserialize, Clone)]
pub struct Languages {
    pub expert: Vec<String>,
    pub proficient: Vec<String>,
    pub basic: Vec<String>,
}

#[derive(Deserialize, Clone)]
pub struct Skills {
    pub languages: Languages,
    pub platforms: Vec<String>,
    pub tools: Vec<String>,
}

#[derive(Deserialize, Clone)]
pub struct Education {
    pub name: String,
    pub degrees: Vec<String>,
    pub gpa: f32,
    pub start_date: String,
    pub end_date: String,
    pub highlights: Vec<String>,
    pub address: String,
}

#[derive(Deserialize, Clone)]
pub struct Experience {
    pub company: String,
    pub description: String,
    pub position: String,
    pub start_date: String,
    pub end_date: String,
    pub highlights: Vec<String>,
    pub address: String,
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
    pub address: String,
    pub objective: String,
    pub education: Vec<Education>,
    pub experience: Vec<Experience>,
    pub skills: Skills,
    pub contact: Contact,
}

pub fn get() -> Result<Resume> {
    Ok(serde_yaml::from_str(RESUME_STR)?)
}

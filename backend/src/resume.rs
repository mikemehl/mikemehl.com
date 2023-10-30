use anyhow::Result;
use serde::{Deserialize, Serialize};

const RESUME_STR: &str = include_str!("../../data/resume.json");

#[derive(Serialize, Deserialize, Clone)]
pub struct Address {
    street: String,
    city: String,
    state: String,
    zip: String,
}

#[derive(Serialize, Deserialize, Clone)]
pub struct ContactInfo {
    phone: String,
    email: String,
    github: String,
    sourcehut: String,
    website: String,
}

#[derive(Serialize, Deserialize, Clone)]
pub struct Experience {
    company: String,
    address: Address,
    position: String,
    start_date: String,
    end_date: String,
    description: String,
    highlights: Vec<String>,
}

#[derive(Serialize, Deserialize, Clone)]
pub struct Education {
    name: String,
    address: Address,
    degrees: Vec<String>,
    gpa: f32,
    start_date: String,
    end_date: String,
    highlights: Vec<String>,
}

#[derive(Serialize, Deserialize, Clone)]
enum SkillLevel {
    basic,
    proficient,
    expert,
}

#[derive(Serialize, Deserialize, Clone)]
enum Skill {
    language { name: String, level: SkillLevel },
    platform { name: String },
    tool { name: String },
}

#[derive(Serialize, Deserialize, Clone)]
enum Interest {
    professional { name: String },
    personal { name: String },
}

#[derive(Serialize, Deserialize, Clone)]
pub struct Resume {
    name: String,
    address: Address,
    contact: ContactInfo,
    objective: String,
    experience: Vec<Experience>,
    education: Vec<Education>,
    skills: Vec<Skill>,
    interests: Vec<Interest>,
}

pub fn get() -> Result<Resume> {
    Ok(serde_json::from_str(RESUME_STR)?)
}

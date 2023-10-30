use crate::resume::{Resume, Skill, SkillLevel};
use actix_web::web;
use askama_actix::{Template, TemplateToResponse};

#[derive(Template)]
#[template(path = "index.html")]
pub struct IndexTemplate;

#[derive(Template)]
#[template(path = "intro.html")]
pub struct IntroTemplate {
    pub resume: web::Data<Resume>,
}

#[derive(Template)]
#[template(path = "experience.html")]
pub struct ExperienceTemplate {
    pub resume: web::Data<Resume>,
}

#[derive(Template)]
#[template(path = "education.html")]
pub struct EducationTemplate {
    pub resume: web::Data<Resume>,
}

#[derive(Template)]
#[template(path = "skills.html")]
pub struct SkillsTemplate {
    pub resume: web::Data<Resume>,
}

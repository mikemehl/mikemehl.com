use crate::resume::Resume;
use crate::templates;
use actix_web::web;
use actix_web::{get, HttpRequest, Responder};

#[get("/")]
async fn index() -> impl Responder {
    templates::IndexTemplate {}
}

#[get("/intro")]
async fn intro(resume: web::Data<Resume>) -> impl Responder {
    templates::IntroTemplate { resume }
}

#[get("/experience")]
async fn experience(resume: web::Data<Resume>) -> impl Responder {
    templates::ExperienceTemplate { resume }
}

#[get("/education")]
async fn education(resume: web::Data<Resume>) -> impl Responder {
    templates::EducationTemplate { resume }
}

#[get("/skills")]
async fn skills(resume: web::Data<Resume>) -> impl Responder {
    templates::SkillsTemplate { resume }
}

pub(crate) async fn resume_file(_: HttpRequest) -> actix_web::Result<actix_files::NamedFile> {
    if let Ok(file) = actix_files::NamedFile::open("./static/resume.pdf") {
        Ok(file)
    } else {
        Err(actix_web::error::ErrorNotFound("File not found"))
    }
}

pub(crate) async fn keybase_file(_: HttpRequest) -> actix_web::Result<actix_files::NamedFile> {
    if let Ok(file) = actix_files::NamedFile::open("./static/keybase.txt") {
        Ok(file)
    } else {
        Err(actix_web::error::ErrorNotFound("File not found"))
    }
}

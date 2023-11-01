use crate::resume::Resume;
use crate::templates;
use actix_web::web;
use actix_web::{get, Responder};

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

#[get("/interests")]
async fn interests(resume: web::Data<Resume>) -> impl Responder {
    templates::InterestsTemplate { resume }
}

#[get("/singlepage")]
async fn singlepage(resume: web::Data<Resume>) -> impl Responder {
    templates::SinglePageTemplate { resume }
}

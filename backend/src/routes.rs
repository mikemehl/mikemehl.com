use crate::resume::Resume;
use actix_web::web;
use actix_web::{get, HttpResponse, Responder};
use lazy_static::lazy_static;
use tera::{Context, Tera};

lazy_static! {
    pub static ref TEMPLATES: Tera = {
        let mut tera = match Tera::new("src/templates/**/*") {
            Ok(t) => t,
            Err(e) => {
                println!("Parsing error(s): {}", e);
                ::std::process::exit(1);
            }
        };
        tera.autoescape_on(vec![".html"]);
        tera
    };
}

#[get("/")]
async fn hello() -> impl Responder {
    let ctx = Context::new();
    if let Ok(resp) = TEMPLATES.render("index.html", &ctx) {
        HttpResponse::Ok().body(resp)
    } else {
        HttpResponse::InternalServerError().body("Template error")
    }
}

#[get("/intro")]
async fn intro(resume: web::Data<Resume>) -> impl Responder {
    let mut ctx = Context::new();
    ctx.insert("resume", &resume);
    if let Ok(resp) = TEMPLATES.render("intro.html", &ctx) {
        HttpResponse::Ok().body(resp)
    } else {
        HttpResponse::InternalServerError().body("Template error")
    }
}

pub mod db;

use actix_web::{get, web, App, HttpResponse, HttpServer, Responder};
use anyhow::Result;
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

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let mut resume_db = web::Data::new(db::Db {
        connection: std::sync::Mutex::new(db::init().unwrap()),
    });
    HttpServer::new(move || App::new().app_data(resume_db).service(hello))
        .bind(("0.0.0.0", 8080))?
        .run()
        .await
}

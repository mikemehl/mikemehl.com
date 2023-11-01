#[allow(non_camel_case_types)]
pub(crate) mod resume;

mod routes;
mod templates;

use actix_web::{web, App, HttpServer};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let resume_data = resume::get().unwrap();
    HttpServer::new(move || {
        App::new()
            .app_data(web::Data::new(resume_data.clone()))
            .service(routes::index)
            .service(routes::intro)
            .service(routes::experience)
            .service(routes::education)
            .service(routes::skills)
            .service(routes::interests)
            .service(routes::singlepage)
    })
    .bind(("0.0.0.0", 8080))?
    .run()
    .await
}

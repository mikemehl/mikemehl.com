mod resume;
mod routes;

use actix_web::{web, App, HttpServer};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let resume_data = resume::get().unwrap();
    HttpServer::new(move || {
        App::new()
            .app_data(web::Data::new(resume_data.clone()))
            .service(routes::hello)
            .service(routes::intro)
    })
    .bind(("0.0.0.0", 8080))?
    .run()
    .await
}

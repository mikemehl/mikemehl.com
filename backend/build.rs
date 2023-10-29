pub fn main() {
    println!("Setting up embed directory");
    if !std::path::Path::new("embed").exists() {
        println!("Creating embed directory");
        std::fs::create_dir("embed").expect("Unable to create embed directory");
    }
    if !std::path::Path::new("embed/resume.db").exists() {
        println!("Creating database");
        std::process::Command::new("sqlite3")
            .args(["../embed/resume.db", "'.read ../db/db.sql'"])
            .status()
            .expect("Unable to create database");
    }
}

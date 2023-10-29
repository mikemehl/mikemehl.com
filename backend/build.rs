pub fn main() {
    std::fs::mkdir_all("embed", 0o755)?;
    std::process::Command::new("sqlite3")
        .args(&["../embed/resume.db"])
        .stdin(std::process::Stdio::piped())
        .status()?;
}

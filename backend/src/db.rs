use anyhow::Result;
use rusqlite::Connection;

pub struct Website {
    pub id: i32,
    pub url: String,
    pub title: String,
    pub description: String,
}

pub fn connect() -> Result<Connection> {
    Ok(Connection::open("db.sqlite3")?)
}

pub fn fetch_all() -> Result<Vec<String>> {
    let conn = connect()?;
    Ok(Vec::new())
}

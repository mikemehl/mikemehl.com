use anyhow::Result;
use rusqlite::Connection;

const DB_INIT: &str = include_str!("../../db/db.sql");

#[derive(Debug)]
pub struct Db {
    pub connection: std::sync::Mutex<rusqlite::Connection>,
}

impl Clone for Db {
    fn clone(&self) -> Self {
        Self {
            connection: std::sync::Mutex::new(self.connection.lock().unwrap()),
        }
    }
}

pub struct Website {
    pub id: i32,
    pub url: String,
    pub title: String,
    pub description: String,
}

pub fn init() -> Result<Connection> {
    let conn = Connection::open_in_memory()?;
    conn.execute_batch(DB_INIT)?;
    Ok(conn)
}

pub fn fetch_websites(conn: &Connection) -> Result<Vec<Website>> {
    let mut stmt = conn.prepare("SELECT * FROM websites")?;
    let rows = stmt.query_map([], |row| {
        Ok(Website {
            id: row.get(0)?,
            url: row.get(1)?,
            title: row.get(2)?,
            description: row.get(3)?,
        })
    })?;
    let mut websites = Vec::new();
    for row in rows {
        websites.push(row?);
    }
    Ok(websites)
}

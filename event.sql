-- event.sql
CREATE TABLE event (
  id INTEGER NOT NULL PRIMARY KEY,
  description VARCHAR(255) NOT NULL,
  start_date DATETIME NOT NULL
);

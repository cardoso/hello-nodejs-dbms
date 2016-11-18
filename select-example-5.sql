-- select-example-5.sql
CREATE TABLE event_partakers (
  id_contact INTEGER NOT NULL,
  id_event INTEGER NOT NULL,
  FOREIGN KEY (id_contact) REFERENCES contact(id),
  FOREIGN KEY (id_event) REFERENCES event(id),
  PRIMARY KEY (id_contact, id_event)
);

INSERT INTO event_partakers (id_contact, id_event) VALUES(1, 1);
INSERT INTO event_partakers (id_contact, id_event) VALUES(2, 1);
INSERT INTO event_partakers (id_contact, id_event) VALUES(1, 3);
INSERT INTO event_partakers (id_contact, id_event) VALUES(3, 3);

SELECT * FROM contact, event, event_partakers WHERE
    contact.id = event_partakers.id_contact AND
    event.id   = event_partakers.id_event AND
    event_partakers.id_event = 3;

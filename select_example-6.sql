-- select_example-6.sql
SELECT event.id, COUNT(event_partakers.id_contact) FROM event, event_partakers
WHERE event.id = event_partakers.id_event;

create view view_tickets(ticket_id, country_name, city_name, fname, lname, date) as
SELECT t.ticket_id,
       y.country_name,
       c.city_name,
       u.fname,
       u.lname,
       t.date
FROM ticket t
         LEFT JOIN country y ON y.country_id = t.country_id
         LEFT JOIN cities c ON c.city_id = t.city_id
         LEFT JOIN users u ON u.user_id = t.user_id
WHERE t.city_id IS NOT NULL;

alter table view_tickets
    owner to postgres;


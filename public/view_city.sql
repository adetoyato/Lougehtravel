create view view_city(city_id, country_name, city_name) as
SELECT c.city_id,
       y.country_name,
       c.city_name
FROM cities c
         LEFT JOIN country y ON y.country_id = c.country_id
WHERE y.country_id IS NOT NULL;

alter table view_city
    owner to postgres;


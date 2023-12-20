create view view_country(country_id, country_name) as
SELECT country_id,
       country_name
FROM country
WHERE country_id IS NOT NULL
with cascaded check option;

alter table view_country
    owner to postgres;


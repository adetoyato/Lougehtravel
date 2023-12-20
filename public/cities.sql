create table cities
(
    city_id    serial
        primary key,
    country_id integer   not null
        constraint fk_country_id
            references country,
    city_name  char(100) not null,
    status     varchar(100) default 'active'::character varying
);

alter table cities
    owner to postgres;


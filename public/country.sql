create table country
(
    country_id   serial
        primary key,
    country_name char(100) not null,
    status       varchar(100) default 'active'::character varying
);

alter table country
    owner to postgres;


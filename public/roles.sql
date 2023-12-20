create table roles
(
    role_id serial
        primary key,
    role    varchar(100) not null,
    status  varchar(50) default 'active'::character varying
);

alter table roles
    owner to postgres;


create table users
(
    user_id  serial
        primary key,
    fname    char(100)    not null,
    lname    char(100)    not null,
    age      integer      not null,
    username varchar(100) not null,
    password varchar(100) not null,
    role_id  integer      not null
        constraint fk_role_id
            references roles,
    status   varchar(100) default 'active'::character varying
);

alter table users
    owner to postgres;


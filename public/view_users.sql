create view view_users(user_id, fname, lname, age, username, password, role_id) as
SELECT user_id,
       fname,
       lname,
       age,
       username,
       password,
       role_id
FROM users
WHERE user_id IS NOT NULL
with cascaded check option;

alter table view_users
    owner to postgres;


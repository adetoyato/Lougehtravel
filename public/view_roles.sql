create view view_roles(role_id, role) as
SELECT role_id,
       role
FROM roles
WHERE role_id IS NOT NULL
with cascaded check option;

alter table view_roles
    owner to postgres;


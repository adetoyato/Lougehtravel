create procedure insert_role(INOUT p_role_id integer, INOUT p_role character)
    language plpgsql
as
$$
BEGIN

    if p_role_id is NULL then
        RAISE EXCEPTION 'role_id must have a value';
    end if;

    if p_role is NULL then
        RAISE EXCEPTION 'role must be defined.';
    end if;

    insert into roles(role_id, role)
    values (p_role_id, p_role);

END;
$$;

alter procedure insert_role(inout integer, inout char) owner to postgres;


create procedure update_role(IN p_role_id integer, IN p_role character)
    language plpgsql
as
$$
begin
	update roles
	set role = p_role
	where role_id = p_role_id;
end;
$$;

alter procedure update_role(integer, char) owner to postgres;


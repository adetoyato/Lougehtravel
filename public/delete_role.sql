create procedure delete_role(IN p_role_id integer)
    language plpgsql
as
$$
begin
	delete from roles
	where role_id = p_role_id;
end;
$$;

alter procedure delete_role(integer) owner to postgres;


create procedure delete_city(IN p_city_id integer)
    language plpgsql
as
$$
begin
	delete from cities
	where city_id = p_city_id;
end;
$$;

alter procedure delete_city(integer) owner to postgres;


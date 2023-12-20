create procedure update_city(IN p_city_id integer, IN p_country_id integer, IN p_city_name character)
    language plpgsql
as
$$
begin
	update cities
	set city_name = p_city_name
	where city_id = p_city_id;
end;
$$;

alter procedure update_city(integer, integer, char) owner to postgres;


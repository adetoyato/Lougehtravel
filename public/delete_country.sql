create procedure delete_country(IN p_country_id integer)
    language plpgsql
as
$$
begin
	delete from country
	where country_id = p_country_id;
end;
$$;

alter procedure delete_country(integer) owner to postgres;


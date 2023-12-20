create procedure update_country(IN p_country_id integer, IN p_country_name character)
    language plpgsql
as
$$
begin
    update country
    set country_name = p_country_name
    where country_id = p_country_id;
end;
$$;

alter procedure update_country(integer, char) owner to postgres;


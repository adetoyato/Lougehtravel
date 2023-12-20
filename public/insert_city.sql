create procedure insert_city(IN p_city_id integer, IN p_country_id integer, IN p_country_name character varying, IN p_city_name character varying)
    language plpgsql
as
$$
BEGIN
    if p_city_id is NULL then
        RAISE EXCEPTION 'destination_id must have a value';
    end if;

    if p_country_id is NULL then
        RAISE EXCEPTION 'city_id must have a value';
    end if;

    if p_city_name is NULL then
        RAISE EXCEPTION 'Please enter a city name.';
    end if;

    insert into cities(city_id, country_id, city_name)
    values(p_city_id, p_country_id, p_city_name);

END;
$$;

alter procedure insert_city(integer, integer, varchar, varchar) owner to postgres;


create procedure insert_country(INOUT p_country_id integer, INOUT p_country_name character varying)
    language plpgsql
as
$$
BEGIN
    if p_country_id is NULL then
        RAISE EXCEPTION 'country_id must have a value.';
    end if;

    if p_country_name is NULL then
        RAISE EXCEPTION 'Please enter a country.';
    end if;
end;
$$;

alter procedure insert_country(inout integer, inout varchar) owner to postgres;


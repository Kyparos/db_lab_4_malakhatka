
CREATE
OR REPLACE PROCEDURE create_get_athletes_by_sport(suffix varchar)
LANGUAGE 'plpgsql'
AS $$
BEGIN
EXECUTE 'CREATE TABLE sports' || quote_ident(suffix) || ' as (select * from  disipline d inner join athletes a ON a.discipline_id = d.dist_id);';
END;
$$;
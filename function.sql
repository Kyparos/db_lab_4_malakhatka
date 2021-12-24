

CREATE OR REPLACE FUNCTION get_athletes_by_sport(sport VARCHAR(50)) RETURNS TABLE
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY (SELECT
            FROM
                disipline d
                inner join athletes a ON a.discipline_id = d.dist_id
            WHERE  dist_name = sport);
END;
$$;

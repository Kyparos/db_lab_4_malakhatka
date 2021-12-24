CREATE TRIGGER upper_insert
AFTER INSERT ON athletes
FOR EACH ROW EXECUTE FUNCTION add_upper();

CREATE OR REPLACE FUNCTION add_upper() RETURNS trigger AS
$$
     BEGIN
          UPDATE
          New.ath_name := UPPER(NEW.ath_name)
          RETURN NULL;
     END;
$$ LANGUAGE 'plpgsql';
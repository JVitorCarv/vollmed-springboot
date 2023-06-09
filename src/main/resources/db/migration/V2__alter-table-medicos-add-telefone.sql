DROP PROCEDURE IF EXISTS add_column_if_not_exists;

DELIMITER //
CREATE PROCEDURE add_column_if_not_exists()
BEGIN
    IF NOT EXISTS (
        SELECT *
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'vollmed_api'
        AND TABLE_NAME = 'medicos'
        AND COLUMN_NAME = 'telefone'
    )
    THEN
ALTER TABLE medicos
    ADD COLUMN telefone varchar(20) NOT NULL;
END IF;
END //

DELIMITER ;

CALL add_column_if_not_exists();
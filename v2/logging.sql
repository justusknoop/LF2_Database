CREATE SCHEMA IF NOT EXISTS audit;

DROP TABLE IF EXISTS audit.ddl_log;

CREATE TABLE audit.ddl_log (
    ddl_log_uuid UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    logged_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    username TEXT NOT NULL,
    command_tag TEXT NOT NULL,
    object_type TEXT,
    schema_name TEXT,
    object_identity TEXT
    -- ddl_command    TEXT  -- wenn du willst, kannst du das Feld behalten, wir befüllen es nur nicht
);

CREATE OR REPLACE FUNCTION audit.log_ddl()
RETURNS event_trigger
LANGUAGE plpgsql
AS $$
DECLARE
    cmd RECORD;
BEGIN
    FOR cmd IN
        SELECT *
        FROM pg_event_trigger_ddl_commands()
    LOOP
        INSERT INTO audit.ddl_log (
            ddl_log_uuid,
            username,
            command_tag,
            object_type,
            schema_name,
            object_identity
        )
        VALUES (
            gen_random_uuid(),
            session_user,
            cmd.command_tag,
            cmd.object_type,
            cmd.schema_name,
            cmd.object_identity
        );
    END LOOP;
END;
$$;

CREATE OR REPLACE FUNCTION audit.log_ddl_drop()
RETURNS event_trigger
LANGUAGE plpgsql
AS $$
DECLARE
    obj RECORD;
BEGIN
    FOR obj IN
        SELECT * FROM pg_event_trigger_dropped_objects()
    LOOP
        INSERT INTO audit.ddl_log (
            ddl_log_uuid,
            username,
            command_tag,
            object_type,
            schema_name,
            object_identity
        )
        VALUES (
            gen_random_uuid(),
            session_user,
            TG_TAG,                -- z.B. 'DROP TABLE'
            obj.object_type,       -- z.B. 'table'
            obj.schema_name,       -- z.B. 'public'
            obj.object_identity    -- z.B. 'public.meine_tabelle'
        );
    END LOOP;
END;
$$;

CREATE EVENT TRIGGER trg_log_tables
ON ddl_command_end
WHEN TAG IN ('CREATE TABLE', 'ALTER TABLE', 'DROP TABLE')
EXECUTE FUNCTION audit.log_ddl();

CREATE EVENT TRIGGER trg_log_drop_tables
ON sql_drop
WHEN TAG IN ('DROP TABLE', 'DROP INDEX', 'DROP VIEW')
EXECUTE FUNCTION audit.log_ddl_drop();

--- Test the logging by creating a table
-- CREATE TABLE public.test_logging (id INT);
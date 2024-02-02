-- liquibase formatted sql

-- changeset muratbekb95:init_1000:0
CREATE TABLE IF NOT EXISTS `note_taking_backend`.notes (
    id BIGINT auto_increment NOT NULL,
    note varchar(300) NOT NULL,
    created_on DATETIME NULL,
    update_on DATETIME NULL,
    CONSTRAINT note_PK PRIMARY KEY (id)
    ) ENGINE=InnoDB
    DEFAULT CHARSET=utf8
    COLLATE=utf8_general_ci;
--rollback drop table `note_taking_backend`.notes IF EXISTS;

-- changeset muratbekb95:init_1000:1
-- precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM `note_taking_backend`.notes WHERE note = 'Run a note_taking_backend project'
INSERT INTO note_taking_backend.notes (note, created_on, update_on) VALUES('Run a note_taking_backend project', CURRENT_TIMESTAMP, null);
INSERT INTO note_taking_backend.notes (note, created_on, update_on) VALUES('Run tests on note_taking_frontend project', CURRENT_TIMESTAMP, null);
INSERT INTO note_taking_backend.notes (note, created_on, update_on) VALUES('Assess a candidate', CURRENT_TIMESTAMP, null);
--rollback DELETE FROM `note_taking_backend`.notes WHERE note = 'Run a note_taking_backend project';

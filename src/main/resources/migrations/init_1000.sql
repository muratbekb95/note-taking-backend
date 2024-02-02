-- liquibase formatted sql

-- changeset muratbekb95:init_1000:0
CREATE TABLE IF NOT EXISTS `note-taking-backend`.notes (
    id BIGINT auto_increment NOT NULL,
    note varchar(300) NOT NULL,
    created_on DATE NULL,
    update_on DATE NULL,
    CONSTRAINT note_PK PRIMARY KEY (id)
    ) ENGINE=InnoDB
    DEFAULT CHARSET=utf8
    COLLATE=utf8_general_ci;
--rollback drop table `note-taking-backend`.notes IF EXISTS

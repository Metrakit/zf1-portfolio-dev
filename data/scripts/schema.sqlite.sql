CREATE TABLE `user` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `login` VARCHAR(256) NOT NULL,
    `password` VARCHAR(256) NOT NULL,
    `email` VARCHAR(256) NOT NULL,
    `created` DATETIME NOT NULL
);
 
CREATE INDEX "pk_user_id" ON "user" ("id");

CREATE TABLE `skill` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` VARCHAR(256) NOT NULL,
    `level` INTEGER NOT NULL,
    `description` TEXT,
    `type` INTEGER NOT NULL,
    `years` INTEGER
);

CREATE INDEX "pk_skill_id" ON "skill" ("id");

CREATE TABLE `career` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` VARCHAR(256) NOT NULL,
    `start_date` DATETIME NOT NULL,
    `end_date` DATETIME,
    `type` INTEGER NOT NULL,
    `now` INTEGER,
    `description` TEXT,
    `place` INTEGER
);

CREATE INDEX "pk_career_id" ON "career" ("id");

CREATE TABLE `work` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` VARCHAR(256) NOT NULL,
    `client` VARCHAR(256),
    `url` TEXT NOT NULL,
    `type` INTEGER NOT NULL,
    `upload` TEXT,
    `release_date` DATETIME NOT NULL,
    `description` TEXT,
    `technologie` TEXT
);

CREATE INDEX "pk_work_id" ON "work" ("id");

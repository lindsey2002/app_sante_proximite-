BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "personnel_soignant" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "prenom" text NOT NULL,
    "qualification" text NOT NULL,
    "pointDeServiceId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "plage_horaire" (
    "id" bigserial PRIMARY KEY,
    "pointDeServiceId" bigint NOT NULL,
    "personnelSoignantId" bigint NOT NULL,
    "dateHeureDebut" timestamp without time zone NOT NULL,
    "dateHeureFin" timestamp without time zone NOT NULL,
    "estReservee" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "personnel_soignant"
    ADD CONSTRAINT "personnel_soignant_fk_0"
    FOREIGN KEY("pointDeServiceId")
    REFERENCES "point_de_service"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "plage_horaire"
    ADD CONSTRAINT "plage_horaire_fk_0"
    FOREIGN KEY("pointDeServiceId")
    REFERENCES "point_de_service"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "plage_horaire"
    ADD CONSTRAINT "plage_horaire_fk_1"
    FOREIGN KEY("personnelSoignantId")
    REFERENCES "personnel_soignant"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR sante_proximite
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sante_proximite', '20260928205724016', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260928205724016', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260129180959368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129180959368', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260213194423028', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260213194423028', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260129181112269', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129181112269', "timestamp" = now();


COMMIT;

BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "point_de_service" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "typeService" text NOT NULL,
    "adresse" text NOT NULL,
    "ville" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "telephone" text,
    "estActif" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR sante_proximite
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sante_proximite', '20260928204006368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260928204006368', "timestamp" = now();

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

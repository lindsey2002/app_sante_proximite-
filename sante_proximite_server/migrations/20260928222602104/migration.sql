BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "personnel_soignant" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "personnel_soignant" (
    "id" bigserial PRIMARY KEY,
    "nomPersonnel" text NOT NULL,
    "prenomPersonnel" text NOT NULL,
    "email" text NOT NULL,
    "roleAcces" text NOT NULL,
    "motDePasseHash" text NOT NULL,
    "tokenSession" text,
    "dateDerniereConnexion" timestamp without time zone,
    "qualification" text NOT NULL,
    "pointDeServiceId" bigint NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "plage_horaire" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "plage_horaire" (
    "id" bigserial PRIMARY KEY,
    "personnelSoignantId" bigint NOT NULL,
    "dateDuJour" timestamp without time zone NOT NULL,
    "heureDebut" text NOT NULL,
    "heureFin" text NOT NULL,
    "estReservee" boolean NOT NULL,
    "pointDeServiceId" bigint NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "point_de_service" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "point_de_service" (
    "id" bigserial PRIMARY KEY,
    "nomEtablissement" text NOT NULL,
    "typeStructure" text NOT NULL,
    "adresse" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "telephone" text,
    "estActif" boolean NOT NULL DEFAULT true
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "profil_beneficiaire" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "prenom" text NOT NULL,
    "lienParente" text NOT NULL,
    "age" bigint NOT NULL,
    "usagerId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rendez_vous" (
    "id" bigserial PRIMARY KEY,
    "dateRdv" timestamp without time zone NOT NULL,
    "heure" text NOT NULL,
    "status" text NOT NULL,
    "recapitulatifDescription" text,
    "codeRdv" text NOT NULL,
    "pieceJointeUrl" text,
    "plageHoraireId" bigint NOT NULL,
    "profilBeneficiaireId" bigint NOT NULL,
    "pointDeServiceId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "usager" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "prenom" text NOT NULL,
    "telephone" text NOT NULL,
    "email" text NOT NULL,
    "motDePasseHash" text NOT NULL,
    "tokenSession" text,
    "dateDerniereConnexion" timestamp without time zone NOT NULL
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
    FOREIGN KEY("personnelSoignantId")
    REFERENCES "personnel_soignant"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "plage_horaire"
    ADD CONSTRAINT "plage_horaire_fk_1"
    FOREIGN KEY("pointDeServiceId")
    REFERENCES "point_de_service"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "profil_beneficiaire"
    ADD CONSTRAINT "profil_beneficiaire_fk_0"
    FOREIGN KEY("usagerId")
    REFERENCES "usager"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "rendez_vous"
    ADD CONSTRAINT "rendez_vous_fk_0"
    FOREIGN KEY("plageHoraireId")
    REFERENCES "plage_horaire"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "rendez_vous"
    ADD CONSTRAINT "rendez_vous_fk_1"
    FOREIGN KEY("profilBeneficiaireId")
    REFERENCES "profil_beneficiaire"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "rendez_vous"
    ADD CONSTRAINT "rendez_vous_fk_2"
    FOREIGN KEY("pointDeServiceId")
    REFERENCES "point_de_service"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR sante_proximite
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sante_proximite', '20260928222602104', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260928222602104', "timestamp" = now();

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

# Santé de Proximité : Backend & Mobile

> Application mobile de santé à proximité permettant l'accès aux soins les plus proches et rapidement, avec possibilité de prise de rendez-vous.

---

##  Présentation du Projet

**Santé de Proximité** est une solution complète visant à faciliter le parcours de soin des usagers. Le système repose sur une architecture robuste assurant la gestion des profils usagers/bénéficiaires, la géolocalisation des points de service et la prise de rendez-vous sécurisée en temps réel.

---

##  Tech Stack

- **Backend :** Dart, Serverpod (Framework Backend ORM & API)
- **Base de données :** PostgreSQL
- **Mobile :** Flutter (Multiplateforme)
- **Architecture :** Multi-profils usagers (`Usager` -> `ProfilBeneficiaire`), transactions atomiques SQL.

---

##  Fonctionnalités Implémentées 

#### `PointDeServiceEndpoint` (Recherche & Géolocalisation)
- **Moteur de proximité géospatial :** Calcul en temps réel de la distance entre l'usager et les structures de santé via la formule Haversine.
- **Recherche multicritère :** Filtrage combiné par type d'établissement (clinique, pharmacie, dispensaire), raison sociale ou adresse.
- **Pagination et performance :** Gestion optimisée des volumes de données avec tri automatique par distance croissante et limitation sécurisée des résultats.

#### `PlageHoraireEndpoint` (Gestion intelligente des disponibilités)
- **Génération par lot (Batch generation) :** Création automatique d'une série de créneaux sur une journée selon une durée définie (ex. 15, 30, 45 min) entre une heure de début et de fin.
- **Contrôle strict des conflits :** Algorithme anti-chevauchement interdisant à un soignant d'avoir deux créneaux concurrents, avec contournement automatique des créneaux déjà existants lors de la génération par lot.
- **Vérification rapide de disponibilité :** Requêtes allégées pour vérifier instantanément si un établissement a des créneaux libres sans charger l'ensemble des données.
- **Protection des données :** Verrouillage interdisant la suppression ou la modification d'un créneau déjà réservé par un patient.

#### `RendezVousEndpoint` (Réservation & Cohérence métier)
- **Validations Métier Strictes :**
  - Préavis minimum de **90 minutes** (1h30) avant l'heure du rendez-vous pour éviter les réservations de dernière minute imprévues.
  - Anti-chevauchement côté usager empêchant la prise de rendez-vous simultanés pour les membres d'une même famille.
  - Quotas de sécurité anti-abus : limitation à **3 RDV max par 24h** et **5 RDV max par période de 7 jours**.
- **Génération de tickets uniques :** Attribution d'un identifiant de réservation lisible et garanti unique en base (`RDV-YYYYMM-XXXXXX`).
- **Intégrité et concurrence :** Réservation du créneau et création du rendez-vous sous transaction atomique BDD (`session.db.transaction`) pour éliminer tout risque de double réservation simultanée.

---

##  Structure du Projet (Serverpod)

```text
sante_proximite/
├── sante_proximite_server/       # Serveur Serverpod
│   ├── lib/
│   │   ├── src/
│   │   │   ├── endpoints/        # Endpoints API
│   │   │   │   ├── point_de_service_endpoint.dart
│   │   │   │   ├── rendez_vous_endpoint.dart
│   │   │   │   └── plage_horaire_endpoint.dart
│   │   │   ├── greetings/        # Modèles de données 
│   │   │   │   ├── usager.spy
│   │   │   │   ├── profil_beneficiaire.spy
│   │   │   │   ├── point_de_service.spy
│   │   │   │   ├── point_de_service_avec_distance.spy
│   │   │   │   ├── personnel_soignant.spy
│   │   │   │   ├── plage_horaire.spy
│   │   │   │   └── rendez_vous.spy
│   │   │   └── generated/        # Code Dart généré automatiquement
│   └── config/                   # Configurations PostgreSQL & Serverpod
├── sante_proximite_client/       # Code client Dart généré
└── sante_proximite_flutter/      # Application mobile Flutter
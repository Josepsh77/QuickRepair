# QuickRepair — Prototype de gestion d’atelier de réparation

## 📌 Description
QuickRepair est un prototype permettant de gérer un atelier de réparation :
- gestion des clients
- gestion des appareils
- création et suivi des réparations (statuts)
- gestion des employés selon rôles (technicien / responsable)
- tableau de bord KPI (suivi activité)

Projet réalisé dans le cadre du CDA Bac+3 — Semestre 1 (2025-2026).

## 👥 Membres
- [Prénom NOM]

## 🛠 Technologies
- Supabase (PostgreSQL)
- [Retool / Appsmith] (interface)
- Git & GitHub (versioning)
- [Metabase / autre] (dashboard si utilisé)

## 📁 Structure du dépôt
- `database/` : scripts SQL (schéma + données de test)
- `exports/` : exports CSV (si utilisés)
- `docs/` : livrables PDF (tests, guide installation, RGPD…)
- `app/screenshots/` : captures d’écran des tests

## ⚙ Installation (résumé)
1. Cloner le dépôt
2. Créer/configurer la base dans Supabase
3. Exécuter `database/schema.sql`
4. Exécuter `database/insert_data.sql`
5. Connecter la ressource PostgreSQL dans l’outil front
6. Ouvrir l’application et tester

## 🔐 Comptes de test
Responsable :
- login : [ex: responsable]
- mot de passe : [ex: xxx]

Technicien :
- login : [ex: technicien]
- mot de passe : [ex: xxx]

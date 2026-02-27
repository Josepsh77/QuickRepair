USE quickrepair_db;

-- =========================
-- 1) BOUTIQUES (5)
-- =========================
INSERT INTO boutique (id_boutique, nom, adresse, telephone) VALUES
(1,'Chatelet','Paris 75001','0612345678'),
(2,'La Defense','Puteaux 92800','0723456789'),
(3,'Creteil','Creteil 94000','0634567890'),
(4,'Velizy','Velizy 78140','0645678901'),
(5,'Cergy','Cergy 95000','0756789012');

-- =========================
-- 2) FOURNISSEURS (5)
-- =========================
INSERT INTO fournisseur (id_fournisseur, nom, telephone, adresse, email) VALUES
(1,'TechParts Europe','0102030405','Paris','contact@techparts.eu'),
(2,'LaptopSpare France','0102030406','Lyon','sales@laptopspare.fr'),
(3,'GameFix Supply','0102030407','Lille','support@gamefix.com'),
(4,'MicroStock Direct','0102030408','Paris','hello@microstock.fr'),
(5,'WatchParts Pro','0102030409','Bruxelles','info@watchparts.pro');

-- =========================
-- 3) CLIENTS (20) (inclut les 10 fournis)
-- =========================
INSERT INTO client (id_client, nom, prenom, telephone, email, adresse) VALUES
(1,'Dupont','Marie','0612345678','m.dupont@email.fr','Paris 75001'),
(2,'Benhamed','Karim','0723456789','k.benhamed@gmail.com','Puteaux 92800'),
(3,'Moreau','Julie','0634567890','julie.moreau@hotmail.fr','Creteil 94000'),
(4,'Lefevre','Thomas','0645678901','t.lefevre@outlook.com','Velizy 78140'),
(5,'Diallo','Amina','0756789012','a.diallo@yahoo.fr','Cergy 95000'),
(6,'Petit','Nicolas','0667890123','n.petit@gmail.com','Paris 75003'),
(7,'Zhang','Sophie','0778901234','s.zhang@email.fr','Nanterre 92000'),
(8,'Roux','Antoine','0689012345','a.roux@protonmail.com','Creteil 94000'),
(9,'El Amrani','Fatima','0790123456','f.elamrani@gmail.com','Cergy 95000'),
(10,'Martin','Pierre','0601234567','p.martin@free.fr','Paris 75011'),

(11,'Bernard','Lucie','0611111111','lucie.bernard@gmail.com','Paris 75015'),
(12,'Nguyen','Minh','0622222222','minh.nguyen@gmail.com','Ivry 94200'),
(13,'Lopez','Carlos','0633333333','carlos.lopez@gmail.com','Saint-Denis 93200'),
(14,'Boulanger','Emma','0644444444','emma.boulanger@gmail.com','Versailles 78000'),
(15,'Cohen','Sarah','0655555555','sarah.cohen@gmail.com','Paris 75009'),
(16,'Traore','Moussa','0666666666','moussa.traore@gmail.com','Courbevoie 92400'),
(17,'Noel','Hugo','0677777777','hugo.noel@gmail.com','Creteil 94000'),
(18,'Mehdi','Ines','0688888888','ines.mehdi@gmail.com','Cergy 95000'),
(19,'Girard','Paul','0699999999','paul.girard@gmail.com','Paris 75012'),
(20,'Khan','Yasmin','0700000000','yasmin.khan@gmail.com','Nanterre 92000');

-- =========================
-- 4) EMPLOYES (10) + rôles
-- =========================
INSERT INTO employe (id_employe, nom, prenom, role, email, telephone, id_boutique) VALUES
(1,'Lemoine','Jean','Technicien','j.lemoine@qr.fr','0610101010',1),
(2,'Dubois','Marc','Technicien','m.dubois@qr.fr','0620202020',2),
(3,'Kouyate','Awa','Technicien','a.kouyate@qr.fr','0630303030',3),
(4,'Morel','Samir','Technicien','s.morel@qr.fr','0640404040',4),
(5,'Fernandez','Lea','Technicien','l.fernandez@qr.fr','0650505050',5),
(6,'Robert','Nina','Agent accueil','n.robert@qr.fr','0660606060',1),
(7,'Leroy','Omar','Agent accueil','o.leroy@qr.fr','0670707070',3),
(8,'Muller','Claire','Logistique','c.muller@qr.fr','0680808080',2),
(9,'Petitjean','Hana','Responsable boutique','h.petitjean@qr.fr','0690909090',4),
(10,'Admin','Ilyes','Administrateur','admin@qr.fr','0600000001',1);

-- =========================
-- 5) APPAREILS (30)
-- =========================
INSERT INTO appareil (id_appareil, marque, modele, numero_serie, date_depot, id_client) VALUES
(1,'Apple','iPhone 14 Pro','SN-IP14P-0001','2025-01-10',1),
(2,'Samsung','Galaxy S24','SN-S24-0002','2025-02-03',3),
(3,'Apple','MacBook Air M2','SN-MBA-M2-0003','2025-02-15',2),
(4,'Apple','iPad Air 5','SN-IPAD-0004','2025-03-01',5),
(5,'Sony','PS5','SN-PS5-0005','2025-03-05',6),
(6,'Nintendo','Switch','SN-NSW-0006','2025-03-10',4),
(7,'Huawei','P30','SN-P30-0007','2025-03-12',8),
(8,'Dell','XPS 15','SN-XPS15-0008','2025-03-15',7),

(9,'Xiaomi','Redmi Note 12','SN-RN12-0009','2025-04-01',11),
(10,'Lenovo','ThinkPad T14','SN-T14-0010','2025-04-03',12),
(11,'Apple','iPhone 13','SN-IP13-0011','2025-04-05',15),
(12,'Samsung','Galaxy Tab S9','SN-TABS9-0012','2025-04-07',20),
(13,'Asus','ZenBook 14','SN-ZB14-0013','2025-04-10',13),
(14,'HP','Pavilion 15','SN-HP15-0014','2025-04-12',14),
(15,'Apple','Apple Watch SE','SN-AWSE-0015','2025-04-15',19),
(16,'Google','Pixel 8','SN-P8-0016','2025-04-18',16),

(17,'Microsoft','Surface Pro 9','SN-SP9-0017','2025-05-01',17),
(18,'Acer','Aspire 5','SN-AC5-0018','2025-05-03',18),
(19,'Sony','PS4','SN-PS4-0019','2025-05-05',10),
(20,'Nintendo','Switch Lite','SN-NSWL-0020','2025-05-07',9),
(21,'OnePlus','OnePlus 11','SN-OP11-0021','2025-05-10',2),
(22,'Apple','iPad 10','SN-IPAD10-0022','2025-05-12',3),
(23,'Dell','Inspiron 14','SN-DI14-0023','2025-05-15',6),
(24,'Samsung','Galaxy A54','SN-A54-0024','2025-05-18',5),

(25,'Apple','iPhone 12','SN-IP12-0025','2025-06-01',1),
(26,'Lenovo','IdeaPad 3','SN-LIP3-0026','2025-06-03',7),
(27,'Apple','MacBook Pro 2019','SN-MBP19-0027','2025-06-05',8),
(28,'Garmin','Venu 2','SN-GV2-0028','2025-06-07',12),
(29,'Apple','Apple Watch S7','SN-AWS7-0029','2025-06-09',15),
(30,'Samsung','Galaxy S22','SN-S22-0030','2025-06-12',4);

-- =========================
-- 6) PIECES (15) + références
-- =========================
INSERT INTO piece (id_piece, reference, nom_piece, prix_unitaire) VALUES
(1,'ECR-IP','Ecran smartphone',89.00),
(2,'BAT-IP','Batterie smartphone',49.00),
(3,'CONN-USB','Connecteur de charge',59.00),
(4,'CM-SP','Carte mere smartphone',129.00),
(5,'CAM-SP','Camera smartphone',69.00),
(6,'ECR-PC','Ecran PC portable',189.00),
(7,'KBD-PC','Clavier PC portable',99.00),
(8,'SSD-PC','SSD 1To',79.00),
(9,'BAT-PC','Batterie PC portable',89.00),
(10,'THERM','Pate thermique',12.00),
(11,'ECR-TAB','Ecran tablette',149.00),
(12,'BAT-TAB','Batterie tablette',69.00),
(13,'ECR-NSW','Ecran console portable',109.00),
(14,'DRV-PS','Lecteur disque console',89.00),
(15,'BAT-W','Batterie montre connectee',59.00);

-- =========================
-- 7) VENDRE (catalogue fournisseurs)
-- =========================
INSERT INTO vendre (id_fournisseur, id_piece, prix_achat) VALUES
(1,1,60.00),(1,2,30.00),(1,5,45.00),
(2,6,140.00),(2,7,70.00),(2,8,55.00),(2,9,60.00),
(3,13,75.00),(3,14,60.00),
(4,3,35.00),(4,10,6.00),
(5,15,40.00);

-- =========================
-- 8) STOCK (réparti par boutique)
-- =========================
INSERT INTO stock (id_piece, id_boutique, quantite_disponible) VALUES
(1,1,8),(2,1,12),(3,1,10),(5,1,6),
(6,2,4),(7,2,6),(8,2,5),(9,2,6),
(11,3,3),(12,3,5),(3,3,7),(10,3,15),
(13,4,4),(6,4,2),(7,4,3),
(15,5,5),(3,5,4),(2,5,6);

-- =========================
-- 9) COMMANDES FOURNISSEURS (EN_COURS + LIVREE)
-- =========================
INSERT INTO commande_fournisseur (id_commande, date_commande, statut_commande, id_fournisseur, id_boutique) VALUES
(1,'2025-03-02','LIVREE',1,1),
(2,'2025-03-18','EN_COURS',2,2),
(3,'2025-04-09','LIVREE',4,3),
(4,'2025-05-20','EN_COURS',3,4),
(5,'2025-06-11','LIVREE',5,5);

INSERT INTO ligne_commande (id_commande, id_piece, quantite, prix_achat_unitaire) VALUES
(1,1,5,60.00),(1,2,10,30.00),
(2,6,2,140.00),(2,7,3,70.00),
(3,3,8,35.00),(3,10,20,6.00),
(4,13,4,75.00),(4,14,2,60.00),
(5,15,5,40.00);

-- =========================
-- 10) REPARATIONS (40) + tous les statuts
-- =========================
INSERT INTO reparation
(id_reparation, date_creation, date_fin, description_panne, status_actuel, montant_total, id_appareil, id_employe)
VALUES
(1,'2025-01-10','2025-01-12','REP-001 Remplacement ecran iPhone 14 Pro','LIVREE',89.00,1,1),
(2,'2025-02-03',NULL,'REP-002 Remplacement batterie Galaxy S24','EN_COURS',49.00,2,3),
(3,'2025-02-15',NULL,'REP-009 Upgrade SSD MacBook Air M2','EN_ATTENTE_PIECE',79.00,3,2),
(4,'2025-03-01',NULL,'REP-015 Reparation connecteur iPad Air 5','DIAGNOSTIC',59.00,4,5),
(5,'2025-03-05',NULL,'REP-017 Reparation lecteur disque PS5','DEVIS_REFUSE',89.00,5,1),
(6,'2025-03-10',NULL,'REP-016 Remplacement ecran Switch','EN_COURS',109.00,6,4),
(7,'2025-03-12',NULL,'REP-006 Desoxydation Huawei P30','PRETE_RETRAIT',79.00,7,3),
(8,'2025-03-15','2025-03-20','REP-008 Clavier + REP-011 Nettoyage Dell XPS 15','LIVREE',148.00,8,2),

(9,'2025-04-01',NULL,'REP-020 Diagnostic complet Redmi Note 12','DEPOT',19.00,9,6),
(10,'2025-04-03',NULL,'REP-012 Reinstallation systeme ThinkPad T14','DEVIS_ENVOYE',59.00,10,2),
(11,'2025-04-05',NULL,'REP-003 Connecteur charge iPhone 13','DEVIS_ACCEPTE',59.00,11,1),
(12,'2025-04-07',NULL,'REP-013 Remplacement ecran Galaxy Tab S9','EN_REPARATION',149.00,12,3),
(13,'2025-04-10',NULL,'REP-007 Remplacement ecran ZenBook 14','PIECE_COMMANDEE',189.00,13,4),
(14,'2025-04-12',NULL,'REP-011 Nettoyage ventilateur/pate HP Pavilion 15','EN_REPARATION',49.00,14,4),
(15,'2025-04-15','2025-04-16','REP-018 Batterie Apple Watch SE','LIVREE',59.00,15,5),
(16,'2025-04-18',NULL,'REP-005 Remplacement camera Pixel 8','DEVIS_ETABLI',69.00,16,1),

(17,'2025-05-01',NULL,'REP-014 Batterie Surface Pro 9','DEVIS_ENVOYE',69.00,17,2),
(18,'2025-05-03',NULL,'REP-010 Batterie PC Acer Aspire 5','ANNULEE',89.00,18,4),
(19,'2025-05-05','2025-05-10','REP-017 Lecteur disque PS4','LIVREE',89.00,19,1),
(20,'2025-05-07',NULL,'REP-016 Ecran Switch Lite','TERMINEE_VERIF',109.00,20,4),

(21,'2025-05-10',NULL,'REP-002 Batterie OnePlus 11','EN_COURS',49.00,21,3),
(22,'2025-05-12',NULL,'REP-020 Diagnostic complet iPad 10','DIAGNOSTIC',19.00,22,5),
(23,'2025-05-15',NULL,'REP-009 Upgrade SSD Dell Inspiron 14','DEVIS_ACCEPTE',79.00,23,2),
(24,'2025-05-18',NULL,'REP-001 Ecran Galaxy A54','EN_REPARATION',89.00,24,3),

(25,'2025-06-01',NULL,'REP-003 Connecteur charge iPhone 12','EN_ATTENTE_PIECE',59.00,25,1),
(26,'2025-06-03',NULL,'REP-012 Reinstallation systeme IdeaPad 3','DEPOT',59.00,26,7),
(27,'2025-06-05',NULL,'REP-011 Nettoyage MacBook Pro 2019','DEVIS_ENVOYE',49.00,27,2),
(28,'2025-06-07',NULL,'REP-019 Ecran Garmin Venu 2','EN_COURS',99.00,28,5),
(29,'2025-06-09',NULL,'REP-018 Batterie Apple Watch S7','DEVIS_REFUSE',59.00,29,5),
(30,'2025-06-12',NULL,'REP-006 Desoxydation Galaxy S22','EN_REPARATION',79.00,30,3),

(31,'2025-06-13',NULL,'REP-004 Carte mere iPhone 14 Pro','DEVIS_ETABLI',129.00,1,1),
(32,'2025-06-14',NULL,'REP-020 Diagnostic complet MacBook Air M2','DEVIS_ENVOYE',19.00,3,2),
(33,'2025-06-15',NULL,'REP-008 Clavier ThinkPad T14','PIECE_COMMANDEE',99.00,10,2),
(34,'2025-06-16',NULL,'REP-002 Batterie Galaxy S24','TERMINEE_VERIF',49.00,2,3),
(35,'2025-06-17',NULL,'REP-001 Ecran iPhone 13','PRETE_RETRAIT',89.00,11,1),
(36,'2025-06-18','2025-06-20','REP-011 Nettoyage HP Pavilion 15','REST
ITUEE',49.00,14,4),
(37,'2025-06-19',NULL,'REP-015 Connecteur iPad Air 5','DEVIS_ACCEPTE',59.00,4,5),
(38,'2025-06-20',NULL,'REP-013 Ecran iPad 10','EN_COURS',149.00,22,5),
(39,'2025-06-21',NULL,'REP-017 Lecteur disque PS5','ANNULEE',89.00,5,1),
(40,'2025-06-22','2025-06-24','REP-018 Batterie Apple Watch SE','LIVREE',59.00,15,5);

-- =========================
-- 11) HISTO_STATUT (quelques entrées cohérentes)
-- =========================
INSERT INTO histo_statut (id_histo_statut, date_changement, ancien_statut, nouveau_statut, id_reparation) VALUES
(1,'2025-01-10 10:00:00','DEPOT','DIAGNOSTIC',1),
(2,'2025-01-11 09:00:00','DIAGNOSTIC','EN_REPARATION',1),
(3,'2025-01-12 16:30:00','EN_REPARATION','LIVREE',1),
(4,'2025-02-15 14:00:00','DEPOT','EN_ATTENTE_PIECE',3),
(5,'2025-03-05 15:00:00','DEVIS_ENVOYE','DEVIS_REFUSE',5),
(6,'2025-03-15 10:00:00','EN_COURS','TERMINEE_VERIF',8),
(7,'2025-03-20 17:00:00','TERMINEE_VERIF','LIVREE',8);

-- =========================
-- 12) DEVIS (exemples)
-- =========================
INSERT INTO devis (id_devis, date_devis, montant_estime, status_devis, id_reparation) VALUES
(1,'2025-04-03',59.00,'ENVOYE',10),
(2,'2025-04-05',59.00,'ACCEPTE',11),
(3,'2025-03-05',89.00,'REFUSE',5),
(4,'2025-06-19',59.00,'ACCEPTE',37);

-- =========================
-- 13) PAIEMENTS (réparations LIVREE)
-- =========================
INSERT INTO paiement (id_paiement, date_paiement, montant, mode_paiement, id_reparation) VALUES
(1,'2025-01-12 17:00:00',89.00,'CB',1),
(2,'2025-03-20 17:30:00',148.00,'CB',8),
(3,'2025-04-16 12:00:00',59.00,'CB',15),
(4,'2025-05-10 18:00:00',89.00,'Especes',19),
(5,'2025-06-24 16:00:00',59.00,'CB',40);
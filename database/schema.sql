{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww33400\viewh20440\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- WARNING: This schema is for context only and is not meant to be run.\
-- Table order and constraints may not be valid for execution.\
\
CREATE TABLE public.appareil (\
  id_appareil bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  marque character varying NOT NULL,\
  modele character varying NOT NULL,\
  numero_serie character varying,\
  date_depot date,\
  id_client bigint NOT NULL,\
  CONSTRAINT appareil_pkey PRIMARY KEY (id_appareil),\
  CONSTRAINT fk_appareil_client FOREIGN KEY (id_client) REFERENCES public.clients(id_client)\
);\
CREATE TABLE public.boutique (\
  id_boutique bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  nom character varying NOT NULL,\
  adresse character varying,\
  telephone character varying,\
  CONSTRAINT boutique_pkey PRIMARY KEY (id_boutique)\
);\
CREATE TABLE public.clients (\
  id_client bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  nom character varying NOT NULL,\
  prenom character varying NOT NULL,\
  telephone character varying,\
  email character varying,\
  adresse character varying,\
  CONSTRAINT clients_pkey PRIMARY KEY (id_client)\
);\
CREATE TABLE public.commande_fournisseur (\
  id_commande bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  date_commande timestamp without time zone NOT NULL DEFAULT now(),\
  statut_commande character varying NOT NULL,\
  id_fournisseur bigint NOT NULL,\
  id_boutique bigint NOT NULL,\
  CONSTRAINT commande_fournisseur_pkey PRIMARY KEY (id_commande),\
  CONSTRAINT fk_commande_fournisseur FOREIGN KEY (id_fournisseur) REFERENCES public.fournisseur(id_fournisseur),\
  CONSTRAINT fk_commande_boutique FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique)\
);\
CREATE TABLE public.devis (\
  id_devis bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  date_devis timestamp without time zone NOT NULL DEFAULT now(),\
  montant_estime numeric NOT NULL CHECK (montant_estime >= 0::numeric),\
  status_devis character varying NOT NULL,\
  id_reparation bigint NOT NULL,\
  CONSTRAINT devis_pkey PRIMARY KEY (id_devis),\
  CONSTRAINT fk_devis_reparation FOREIGN KEY (id_reparation) REFERENCES public.reparation(id_reparation)\
);\
CREATE TABLE public.employe (\
  id_employe bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  nom character varying NOT NULL,\
  prenom character varying NOT NULL,\
  role character varying NOT NULL,\
  email character varying,\
  telephone character varying,\
  id_boutique bigint NOT NULL,\
  CONSTRAINT employe_pkey PRIMARY KEY (id_employe),\
  CONSTRAINT fk_employe_boutique FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique)\
);\
CREATE TABLE public.fournisseur (\
  id_fournisseur bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  nom character varying NOT NULL,\
  telephone character varying,\
  adresse character varying,\
  email character varying,\
  CONSTRAINT fournisseur_pkey PRIMARY KEY (id_fournisseur)\
);\
CREATE TABLE public.histo_statut (\
  id_histo_statut bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  date_changement timestamp without time zone NOT NULL DEFAULT now(),\
  ancien_statut character varying,\
  nouveau_statut character varying NOT NULL,\
  id_reparation bigint NOT NULL,\
  CONSTRAINT histo_statut_pkey PRIMARY KEY (id_histo_statut),\
  CONSTRAINT fk_histo_reparation FOREIGN KEY (id_reparation) REFERENCES public.reparation(id_reparation)\
);\
CREATE TABLE public.ligne_commande (\
  id_commande bigint NOT NULL,\
  id_piece bigint NOT NULL,\
  quantite integer NOT NULL CHECK (quantite > 0),\
  prix_achat_unitaire numeric NOT NULL CHECK (prix_achat_unitaire >= 0::numeric),\
  CONSTRAINT ligne_commande_pkey PRIMARY KEY (id_commande, id_piece),\
  CONSTRAINT fk_ligne_commande_commande FOREIGN KEY (id_commande) REFERENCES public.commande_fournisseur(id_commande),\
  CONSTRAINT fk_ligne_commande_piece FOREIGN KEY (id_piece) REFERENCES public.piece(id_piece)\
);\
CREATE TABLE public.paiement (\
  id_paiement bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  date_paiement timestamp without time zone NOT NULL DEFAULT now(),\
  montant numeric NOT NULL CHECK (montant >= 0::numeric),\
  mode_paiement character varying NOT NULL CHECK (mode_paiement::text = ANY (ARRAY['CB'::character varying, 'ESPECES'::character varying, 'VIREMENT'::character varying]::text[])),\
  id_reparation bigint NOT NULL,\
  CONSTRAINT paiement_pkey PRIMARY KEY (id_paiement),\
  CONSTRAINT fk_paiement_reparation FOREIGN KEY (id_reparation) REFERENCES public.reparation(id_reparation)\
);\
CREATE TABLE public.piece (\
  id_piece bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  reference character varying NOT NULL,\
  nom_piece character varying NOT NULL,\
  prix_unitaire numeric NOT NULL CHECK (prix_unitaire >= 0::numeric),\
  CONSTRAINT piece_pkey PRIMARY KEY (id_piece)\
);\
CREATE TABLE public.reparation (\
  id_reparation bigint GENERATED ALWAYS AS IDENTITY NOT NULL,\
  date_creation timestamp without time zone NOT NULL DEFAULT now(),\
  date_fin timestamp without time zone,\
  description_panne character varying,\
  status_actuel character varying NOT NULL,\
  montant_total numeric NOT NULL DEFAULT 0 CHECK (montant_total >= 0::numeric),\
  id_appareil bigint NOT NULL,\
  id_employe bigint,\
  CONSTRAINT reparation_pkey PRIMARY KEY (id_reparation),\
  CONSTRAINT fk_reparation_appareil FOREIGN KEY (id_appareil) REFERENCES public.appareil(id_appareil),\
  CONSTRAINT fk_reparation_employe FOREIGN KEY (id_employe) REFERENCES public.employe(id_employe)\
);\
CREATE TABLE public.stock (\
  id_piece bigint NOT NULL,\
  id_boutique bigint NOT NULL,\
  quantite_disponible integer NOT NULL DEFAULT 0 CHECK (quantite_disponible >= 0),\
  CONSTRAINT stock_pkey PRIMARY KEY (id_piece, id_boutique),\
  CONSTRAINT fk_stock_piece FOREIGN KEY (id_piece) REFERENCES public.piece(id_piece),\
  CONSTRAINT fk_stock_boutique FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique)\
);\
CREATE TABLE public.vendre (\
  id_fournisseur bigint NOT NULL,\
  id_piece bigint NOT NULL,\
  prix_achat numeric NOT NULL CHECK (prix_achat >= 0::numeric),\
  CONSTRAINT vendre_pkey PRIMARY KEY (id_fournisseur, id_piece),\
  CONSTRAINT fk_vendre_fournisseur FOREIGN KEY (id_fournisseur) REFERENCES public.fournisseur(id_fournisseur),\
  CONSTRAINT fk_vendre_piece FOREIGN KEY (id_piece) REFERENCES public.piece(id_piece)\
);}
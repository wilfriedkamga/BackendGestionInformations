PGDMP                          |            gestion_information %   12.17 (Ubuntu 12.17-0ubuntu0.20.04.1) %   12.17 (Ubuntu 12.17-0ubuntu0.20.04.1) =    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    81920    gestion_information    DATABASE     �   CREATE DATABASE gestion_information WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 #   DROP DATABASE gestion_information;
                postgres    false            �            1259    106496    c_municipaux    TABLE     �   CREATE TABLE public.c_municipaux (
    nom text,
    parti_politique text,
    telephone1 text,
    telephone2 text,
    email text,
    fonction text,
    sexe text,
    code_commune integer NOT NULL,
    id integer NOT NULL
);
     DROP TABLE public.c_municipaux;
       public         heap    postgres    false            �            1259    180224    c_municipaux_id_seq    SEQUENCE     �   ALTER TABLE public.c_municipaux ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_municipaux_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    98333    c_regionaux    TABLE     T  CREATE TABLE public.c_regionaux (
    pays text,
    region text,
    departement text,
    qualite text,
    nom text,
    sexe text,
    mandat text,
    a_naissance text,
    parti_politique text,
    telephone text,
    email text,
    fonction text,
    niveau_etude text,
    diplome text,
    profil text,
    id integer NOT NULL
);
    DROP TABLE public.c_regionaux;
       public         heap    postgres    false            �            1259    114693    c_regionaux_id_seq    SEQUENCE     �   ALTER TABLE public.c_regionaux ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_regionaux_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    208            �            1259    106508 
   chefferies    TABLE     �   CREATE TABLE public.chefferies (
    region text,
    departement text,
    arrondissement text,
    groupement text,
    denomination text,
    classification text,
    acte_creation text,
    chef_traditionnel text,
    id integer NOT NULL
);
    DROP TABLE public.chefferies;
       public         heap    postgres    false            �            1259    114706    chefferies_id_seq    SEQUENCE     �   ALTER TABLE public.chefferies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.chefferies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            �            1259    81930    deputes    TABLE     �  CREATE TABLE public.deputes (
    region text,
    departement text,
    circonscription text,
    nom text NOT NULL,
    qualite text,
    statut text,
    legislative text,
    sexe text,
    parti_politique text,
    a_naissance text,
    niveau_etude text,
    diplome text,
    profil text,
    commission text,
    fonction text,
    telephone1 text,
    telephone2 text,
    email text,
    pays text,
    id integer NOT NULL
);
    DROP TABLE public.deputes;
       public         heap    postgres    false            �            1259    122975    deputes_id_seq    SEQUENCE     �   ALTER TABLE public.deputes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.deputes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            �            1259    98304    gouverneurs    TABLE     .  CREATE TABLE public.gouverneurs (
    pays text,
    chapitre text,
    region text,
    fonction text,
    nom text,
    sexe text,
    qualifiction text,
    decret text,
    telephone1 text,
    telephone2 text,
    fax_bureau2 text,
    email text,
    fax_bureau1 text,
    id integer NOT NULL
);
    DROP TABLE public.gouverneurs;
       public         heap    postgres    false            �            1259    114726    gouverneurs_id_seq    SEQUENCE     �   ALTER TABLE public.gouverneurs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.gouverneurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    147478 
   indicateur    TABLE     �   CREATE TABLE public.indicateur (
    id integer NOT NULL,
    code_cible text NOT NULL,
    code_indicateur text NOT NULL,
    indicateur text NOT NULL
);
    DROP TABLE public.indicateur;
       public         heap    postgres    false            �            1259    147476    indicateur_id_seq    SEQUENCE     �   ALTER TABLE public.indicateur ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.indicateur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    98313    maires    TABLE     $  CREATE TABLE public.maires (
    pays text,
    region text,
    departement text,
    commune text,
    code text,
    nom text,
    sexe text,
    mandat text,
    parti_politique text,
    telephone1 text,
    telephone2 text,
    email text,
    fonction text,
    id integer NOT NULL
);
    DROP TABLE public.maires;
       public         heap    postgres    false            �            1259    122884    maires_id_seq    SEQUENCE     �   ALTER TABLE public.maires ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.maires_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            �            1259    122935    ministères    TABLE     L  CREATE TABLE public."ministères" (
    id integer NOT NULL,
    code_secteur integer NOT NULL,
    chapitre text NOT NULL,
    odds text,
    site_internet text,
    locaisation text,
    ministre text,
    ministre_delegue text,
    secretaire_d_etat text,
    secretaire_general text,
    designation text,
    directeur text
);
 !   DROP TABLE public."ministères";
       public         heap    postgres    false            �            1259    147507    ministères_id_seq    SEQUENCE     �   ALTER TABLE public."ministères" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ministères_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    122957    odd    TABLE     v   CREATE TABLE public.odd (
    code_odd integer NOT NULL,
    code_pays integer NOT NULL,
    libelle text NOT NULL
);
    DROP TABLE public.odd;
       public         heap    postgres    false            �            1259    147467 	   odd_cible    TABLE     �   CREATE TABLE public.odd_cible (
    code_odd integer,
    code_cible text NOT NULL,
    libelle text,
    id integer NOT NULL
);
    DROP TABLE public.odd_cible;
       public         heap    postgres    false            �            1259    147465    odd_cible_id_seq    SEQUENCE     �   ALTER TABLE public.odd_cible ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.odd_cible_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    106502    parti_politique    TABLE       CREATE TABLE public.parti_politique (
    designation_sigle text NOT NULL,
    acte_creation text,
    president text,
    siege text,
    telephone text,
    telephone2 text,
    site_internet text,
    code_pays integer NOT NULL,
    code_parti_politique integer NOT NULL
);
 #   DROP TABLE public.parti_politique;
       public         heap    postgres    false            �            1259    147487 (   parti_politique_code_parti-politique_seq    SEQUENCE     �   ALTER TABLE public.parti_politique ALTER COLUMN code_parti_politique ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."parti_politique_code_parti-politique_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �            1259    122929    pays    TABLE     a  CREATE TABLE public.pays (
    libelle text,
    masculin integer,
    feminin integer,
    total text,
    date_creation text,
    densite text,
    superficie text,
    nb_region integer,
    nb_departement integer,
    nb_commune integer,
    date_independance text,
    date_reunification text,
    date_unification text,
    id integer NOT NULL
);
    DROP TABLE public.pays;
       public         heap    postgres    false            �            1259    122944    pays_id_seq    SEQUENCE     �   ALTER TABLE public.pays ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    98320    prefets    TABLE       CREATE TABLE public.prefets (
    region text,
    departement text,
    fonction text,
    nom text,
    telephone1 text,
    fax_bureau text,
    email text,
    sexe text,
    qualification text,
    decret text,
    pays text,
    id integer NOT NULL
);
    DROP TABLE public.prefets;
       public         heap    postgres    false            �            1259    122905    prefets_id_seq    SEQUENCE     �   ALTER TABLE public.prefets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.prefets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    206            �            1259    155650 	   programme    TABLE     `  CREATE TABLE public.programme (
    code integer NOT NULL,
    libelle text NOT NULL,
    objectifs text,
    "libelleAng" text,
    coordination text,
    horizon text,
    date_debut text,
    date_fin text,
    montant numeric,
    responsable text,
    description text,
    axes text,
    strategie text,
    resultats text,
    hypothese text
);
    DROP TABLE public.programme;
       public         heap    postgres    false            �            1259    155648    programme_code_seq    SEQUENCE     �   ALTER TABLE public.programme ALTER COLUMN code ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.programme_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    147499    secteur    TABLE     v   CREATE TABLE public.secteur (
    code_pays integer NOT NULL,
    code integer NOT NULL,
    secteur text NOT NULL
);
    DROP TABLE public.secteur;
       public         heap    postgres    false            �            1259    172032    secteur_code_seq    SEQUENCE     �   ALTER TABLE public.secteur ALTER COLUMN code ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.secteur_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            �            1259    81921 	   senateurs    TABLE     �  CREATE TABLE public.senateurs (
    region text,
    qualite text,
    statut text,
    mandat text,
    sexe text,
    mode text,
    parti_politique text,
    a_naissance text,
    niveau_etude text,
    diplome text,
    profil text,
    commission text,
    fonction text,
    telephone1 text,
    telephone2 text,
    email text,
    nom text,
    pays text,
    id integer NOT NULL
);
    DROP TABLE public.senateurs;
       public         heap    postgres    false            �            1259    122965    senateurs_id_seq    SEQUENCE     �   ALTER TABLE public.senateurs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.senateurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202            �            1259    98326    sous_prefets    TABLE       CREATE TABLE public.sous_prefets (
    pays text,
    region text,
    departement text,
    arrondissement text,
    fonction text,
    nom text,
    telephone text,
    fax_bureau text,
    email text,
    sexe text,
    qualifcation text,
    decret text,
    id integer NOT NULL
);
     DROP TABLE public.sous_prefets;
       public         heap    postgres    false            �            1259    122919    sous_prefets_id_seq    SEQUENCE     �   ALTER TABLE public.sous_prefets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sous_prefets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207            �            1259    106518    zone    TABLE     �   CREATE TABLE public.zone (
    code_pays integer NOT NULL,
    code_region integer NOT NULL,
    region text,
    code_departement integer,
    departement text,
    code_commune integer,
    commune text,
    id integer NOT NULL
);
    DROP TABLE public.zone;
       public         heap    postgres    false            �            1259    163840    zone_id_seq    SEQUENCE     �   ALTER TABLE public.zone ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.zone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �           2606    180233    c_municipaux c_municipaux_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.c_municipaux
    ADD CONSTRAINT c_municipaux_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.c_municipaux DROP CONSTRAINT c_municipaux_pkey;
       public            postgres    false    209            �           2606    114692    c_regionaux c_regionaux_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.c_regionaux
    ADD CONSTRAINT c_regionaux_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.c_regionaux DROP CONSTRAINT c_regionaux_pkey;
       public            postgres    false    208            �           2606    114715    chefferies chefferies_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.chefferies
    ADD CONSTRAINT chefferies_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.chefferies DROP CONSTRAINT chefferies_pkey;
       public            postgres    false    211            �           2606    122984    deputes deputes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.deputes
    ADD CONSTRAINT deputes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.deputes DROP CONSTRAINT deputes_pkey;
       public            postgres    false    203            �           2606    114735    gouverneurs gouverneurs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.gouverneurs
    ADD CONSTRAINT gouverneurs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.gouverneurs DROP CONSTRAINT gouverneurs_pkey;
       public            postgres    false    204            �           2606    147485    indicateur indicateur_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.indicateur
    ADD CONSTRAINT indicateur_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.indicateur DROP CONSTRAINT indicateur_pkey;
       public            postgres    false    228            �           2606    122893    maires maires_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.maires
    ADD CONSTRAINT maires_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.maires DROP CONSTRAINT maires_pkey;
       public            postgres    false    205            �           2606    147516    ministères ministères_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ministères"
    ADD CONSTRAINT "ministères_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."ministères" DROP CONSTRAINT "ministères_pkey";
       public            postgres    false    220            �           2606    147474    odd_cible odd_cible_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.odd_cible
    ADD CONSTRAINT odd_cible_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.odd_cible DROP CONSTRAINT odd_cible_pkey;
       public            postgres    false    226            �           2606    147459    odd odd_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.odd
    ADD CONSTRAINT odd_pkey PRIMARY KEY (code_odd);
 6   ALTER TABLE ONLY public.odd DROP CONSTRAINT odd_pkey;
       public            postgres    false    222            �           2606    147496 $   parti_politique parti_politique_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.parti_politique
    ADD CONSTRAINT parti_politique_pkey PRIMARY KEY (code_parti_politique);
 N   ALTER TABLE ONLY public.parti_politique DROP CONSTRAINT parti_politique_pkey;
       public            postgres    false    210            �           2606    122953    pays pays_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pays DROP CONSTRAINT pays_pkey;
       public            postgres    false    219            �           2606    122914    prefets prefets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.prefets
    ADD CONSTRAINT prefets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.prefets DROP CONSTRAINT prefets_pkey;
       public            postgres    false    206            �           2606    155657    programme programme_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.programme
    ADD CONSTRAINT programme_pkey PRIMARY KEY (code);
 B   ALTER TABLE ONLY public.programme DROP CONSTRAINT programme_pkey;
       public            postgres    false    233            �           2606    172041    secteur secteur_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.secteur DROP CONSTRAINT secteur_pkey;
       public            postgres    false    230            �           2606    122974    senateurs senateurs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.senateurs
    ADD CONSTRAINT senateurs_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.senateurs DROP CONSTRAINT senateurs_pkey;
       public            postgres    false    202            �           2606    122928    sous_prefets sous_prefets_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sous_prefets
    ADD CONSTRAINT sous_prefets_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sous_prefets DROP CONSTRAINT sous_prefets_pkey;
       public            postgres    false    207            �           2606    163849    zone zone_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.zone DROP CONSTRAINT zone_pkey;
       public            postgres    false    212            �           2606    147460    odd fk_pays    FK CONSTRAINT     u   ALTER TABLE ONLY public.odd
    ADD CONSTRAINT fk_pays FOREIGN KEY (code_pays) REFERENCES public.pays(id) NOT VALID;
 5   ALTER TABLE ONLY public.odd DROP CONSTRAINT fk_pays;
       public          postgres    false    222    2971    219            �           2606    188421    odd_cible odd_oddCibles    FK CONSTRAINT     �   ALTER TABLE ONLY public.odd_cible
    ADD CONSTRAINT "odd_oddCibles" FOREIGN KEY (code_odd) REFERENCES public.odd(code_odd) NOT VALID;
 C   ALTER TABLE ONLY public.odd_cible DROP CONSTRAINT "odd_oddCibles";
       public          postgres    false    2975    226    222            �           2606    188416    parti_politique pp_pays    FK CONSTRAINT     �   ALTER TABLE ONLY public.parti_politique
    ADD CONSTRAINT pp_pays FOREIGN KEY (code_pays) REFERENCES public.pays(id) NOT VALID;
 A   ALTER TABLE ONLY public.parti_politique DROP CONSTRAINT pp_pays;
       public          postgres    false    210    219    2971            �           2606    172042    secteur secteur_code_pays_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_code_pays_fkey FOREIGN KEY (code_pays) REFERENCES public.pays(id) NOT VALID;
 H   ALTER TABLE ONLY public.secteur DROP CONSTRAINT secteur_code_pays_fkey;
       public          postgres    false    2971    230    219           
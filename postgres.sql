PGDMP  7    6            
    {            postgres    16.0    16.0 Y    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE postgres;
                postgres    false            X           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4951                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            Y           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16599    dosen    TABLE       CREATE TABLE public.dosen (
    id integer NOT NULL,
    nip character varying(18) NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50),
    alamat character varying(100),
    phone character varying(12),
    user_id integer
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            �            1259    16598    dosen_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.dosen_id_seq;
       public          postgres    false    220            Z           0    0    dosen_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.dosen_id_seq OWNED BY public.dosen.id;
          public          postgres    false    219            �            1259    16642 	   kabupaten    TABLE     z   CREATE TABLE public.kabupaten (
    id integer NOT NULL,
    id_provinsi character varying,
    nama character varying
);
    DROP TABLE public.kabupaten;
       public         heap    postgres    false            �            1259    16641    kabupaten_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kabupaten_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kabupaten_id_seq;
       public          postgres    false    228            [           0    0    kabupaten_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kabupaten_id_seq OWNED BY public.kabupaten.id;
          public          postgres    false    227            �            1259    16672    khs    TABLE     A  CREATE TABLE public.khs (
    id integer NOT NULL,
    semester_aktif integer NOT NULL,
    sks integer NOT NULL,
    sks_kumulatif integer NOT NULL,
    ip numeric(3,2) NOT NULL,
    ip_kumulatif numeric(3,2) NOT NULL,
    status_konfirmasi character varying(20),
    file character varying,
    mahasiswa_id integer
);
    DROP TABLE public.khs;
       public         heap    postgres    false            �            1259    16671 
   khs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.khs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.khs_id_seq;
       public          postgres    false    232            \           0    0 
   khs_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.khs_id_seq OWNED BY public.khs.id;
          public          postgres    false    231            �            1259    16651 	   mahasiswa    TABLE     �  CREATE TABLE public.mahasiswa (
    id integer NOT NULL,
    nim character varying(14) NOT NULL,
    name character varying(50) NOT NULL,
    angkatan character varying(4) NOT NULL,
    email character varying(50),
    alamat character varying(100),
    phone character varying(12),
    kodewali integer,
    kodekab character varying,
    status character varying,
    jalurmasuk character varying,
    user_id integer
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    16650    mahasiswa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mahasiswa_id_seq;
       public          postgres    false    230            ]           0    0    mahasiswa_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mahasiswa_id_seq OWNED BY public.mahasiswa.id;
          public          postgres    false    229            �            1259    16700    pkl    TABLE     �   CREATE TABLE public.pkl (
    id integer NOT NULL,
    nilai character varying(1),
    semester integer,
    status_konfirmasi character varying(20),
    file character varying,
    mahasiswa_id integer
);
    DROP TABLE public.pkl;
       public         heap    postgres    false            �            1259    16699 
   pkl_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pkl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.pkl_id_seq;
       public          postgres    false    236            ^           0    0 
   pkl_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.pkl_id_seq OWNED BY public.pkl.id;
          public          postgres    false    235            �            1259    16633    provinsi    TABLE     V   CREATE TABLE public.provinsi (
    id integer NOT NULL,
    nama character varying
);
    DROP TABLE public.provinsi;
       public         heap    postgres    false            �            1259    16632    provinsi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.provinsi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.provinsi_id_seq;
       public          postgres    false    226            _           0    0    provinsi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.provinsi_id_seq OWNED BY public.provinsi.id;
          public          postgres    false    225            �            1259    16507    refreshTokens    TABLE     T   CREATE TABLE public."refreshTokens" (
    tokens character varying(512) NOT NULL
);
 #   DROP TABLE public."refreshTokens";
       public         heap    postgres    false            �            1259    16615    role    TABLE     R   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    16614    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    222            `           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    221            �            1259    16686    skripsi    TABLE       CREATE TABLE public.skripsi (
    id integer NOT NULL,
    nilai character varying(1) NOT NULL,
    tanggal date NOT NULL,
    semester integer NOT NULL,
    status_konfirmasi character varying NOT NULL,
    file character varying,
    mahasiswa_id integer
);
    DROP TABLE public.skripsi;
       public         heap    postgres    false            �            1259    16685    skripsi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skripsi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.skripsi_id_seq;
       public          postgres    false    234            a           0    0    skripsi_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.skripsi_id_seq OWNED BY public.skripsi.id;
          public          postgres    false    233            �            1259    16624    status    TABLE     T   CREATE TABLE public.status (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    16623    status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    224            b           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    223            �            1259    16488    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16487    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            c           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            �           2604    16602    dosen id    DEFAULT     d   ALTER TABLE ONLY public.dosen ALTER COLUMN id SET DEFAULT nextval('public.dosen_id_seq'::regclass);
 7   ALTER TABLE public.dosen ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16645    kabupaten id    DEFAULT     l   ALTER TABLE ONLY public.kabupaten ALTER COLUMN id SET DEFAULT nextval('public.kabupaten_id_seq'::regclass);
 ;   ALTER TABLE public.kabupaten ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16675    khs id    DEFAULT     `   ALTER TABLE ONLY public.khs ALTER COLUMN id SET DEFAULT nextval('public.khs_id_seq'::regclass);
 5   ALTER TABLE public.khs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16654    mahasiswa id    DEFAULT     l   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN id SET DEFAULT nextval('public.mahasiswa_id_seq'::regclass);
 ;   ALTER TABLE public.mahasiswa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16703    pkl id    DEFAULT     `   ALTER TABLE ONLY public.pkl ALTER COLUMN id SET DEFAULT nextval('public.pkl_id_seq'::regclass);
 5   ALTER TABLE public.pkl ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    16636    provinsi id    DEFAULT     j   ALTER TABLE ONLY public.provinsi ALTER COLUMN id SET DEFAULT nextval('public.provinsi_id_seq'::regclass);
 :   ALTER TABLE public.provinsi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16618    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16689 
   skripsi id    DEFAULT     h   ALTER TABLE ONLY public.skripsi ALTER COLUMN id SET DEFAULT nextval('public.skripsi_id_seq'::regclass);
 9   ALTER TABLE public.skripsi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16627 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16491    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            A          0    16599    dosen 
   TABLE DATA           M   COPY public.dosen (id, nip, name, email, alamat, phone, user_id) FROM stdin;
    public          postgres    false    220   ,`       I          0    16642 	   kabupaten 
   TABLE DATA           :   COPY public.kabupaten (id, id_provinsi, nama) FROM stdin;
    public          postgres    false    228   I`       M          0    16672    khs 
   TABLE DATA           ~   COPY public.khs (id, semester_aktif, sks, sks_kumulatif, ip, ip_kumulatif, status_konfirmasi, file, mahasiswa_id) FROM stdin;
    public          postgres    false    232   f`       K          0    16651 	   mahasiswa 
   TABLE DATA           �   COPY public.mahasiswa (id, nim, name, angkatan, email, alamat, phone, kodewali, kodekab, status, jalurmasuk, user_id) FROM stdin;
    public          postgres    false    230   �`       Q          0    16700    pkl 
   TABLE DATA           Y   COPY public.pkl (id, nilai, semester, status_konfirmasi, file, mahasiswa_id) FROM stdin;
    public          postgres    false    236   �`       G          0    16633    provinsi 
   TABLE DATA           ,   COPY public.provinsi (id, nama) FROM stdin;
    public          postgres    false    226   �`       ?          0    16507    refreshTokens 
   TABLE DATA           1   COPY public."refreshTokens" (tokens) FROM stdin;
    public          postgres    false    218   �`       C          0    16615    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    222   ie       O          0    16686    skripsi 
   TABLE DATA           f   COPY public.skripsi (id, nilai, tanggal, semester, status_konfirmasi, file, mahasiswa_id) FROM stdin;
    public          postgres    false    234   �e       E          0    16624    status 
   TABLE DATA           *   COPY public.status (id, name) FROM stdin;
    public          postgres    false    224   �e       >          0    16488    users 
   TABLE DATA           D   COPY public.users (id, username, email, password, role) FROM stdin;
    public          postgres    false    217   �e       d           0    0    dosen_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.dosen_id_seq', 1, false);
          public          postgres    false    219            e           0    0    kabupaten_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.kabupaten_id_seq', 1, false);
          public          postgres    false    227            f           0    0 
   khs_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.khs_id_seq', 1, false);
          public          postgres    false    231            g           0    0    mahasiswa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.mahasiswa_id_seq', 1, false);
          public          postgres    false    229            h           0    0 
   pkl_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.pkl_id_seq', 1, false);
          public          postgres    false    235            i           0    0    provinsi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.provinsi_id_seq', 1, false);
          public          postgres    false    225            j           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
          public          postgres    false    221            k           0    0    skripsi_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.skripsi_id_seq', 1, false);
          public          postgres    false    233            l           0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 1, false);
          public          postgres    false    223            m           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    216            �           2606    16608    dosen dosen_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_email_key;
       public            postgres    false    220            �           2606    16606    dosen dosen_nip_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_nip_key UNIQUE (nip);
 =   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_nip_key;
       public            postgres    false    220            �           2606    16604    dosen dosen_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    220            �           2606    16649    kabupaten kabupaten_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT kabupaten_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kabupaten DROP CONSTRAINT kabupaten_pkey;
       public            postgres    false    228            �           2606    16679    khs khs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.khs
    ADD CONSTRAINT khs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.khs DROP CONSTRAINT khs_pkey;
       public            postgres    false    232            �           2606    16660    mahasiswa mahasiswa_nim_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_nim_key UNIQUE (nim);
 E   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_nim_key;
       public            postgres    false    230            �           2606    16658    mahasiswa mahasiswa_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    230            �           2606    16707    pkl pkl_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.pkl
    ADD CONSTRAINT pkl_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.pkl DROP CONSTRAINT pkl_pkey;
       public            postgres    false    236            �           2606    16640    provinsi provinsi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pkey;
       public            postgres    false    226            �           2606    16513     refreshTokens refreshTokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."refreshTokens"
    ADD CONSTRAINT "refreshTokens_pkey" PRIMARY KEY (tokens);
 N   ALTER TABLE ONLY public."refreshTokens" DROP CONSTRAINT "refreshTokens_pkey";
       public            postgres    false    218            �           2606    16622    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    222            �           2606    16693    skripsi skripsi_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.skripsi
    ADD CONSTRAINT skripsi_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.skripsi DROP CONSTRAINT skripsi_pkey;
       public            postgres    false    234            �           2606    16631    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    224            �           2606    16493    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           2606    16609    dosen dosen_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_user_id_fkey;
       public          postgres    false    217    220    4749            �           2606    16680    khs khs_mahasiswa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.khs
    ADD CONSTRAINT khs_mahasiswa_id_fkey FOREIGN KEY (mahasiswa_id) REFERENCES public.mahasiswa(id);
 C   ALTER TABLE ONLY public.khs DROP CONSTRAINT khs_mahasiswa_id_fkey;
       public          postgres    false    4769    230    232            �           2606    16661 !   mahasiswa mahasiswa_kodewali_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_kodewali_fkey FOREIGN KEY (kodewali) REFERENCES public.dosen(id);
 K   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_kodewali_fkey;
       public          postgres    false    4757    220    230            �           2606    16666     mahasiswa mahasiswa_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_user_id_fkey;
       public          postgres    false    4749    217    230            �           2606    16708    pkl pkl_mahasiswa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pkl
    ADD CONSTRAINT pkl_mahasiswa_id_fkey FOREIGN KEY (mahasiswa_id) REFERENCES public.mahasiswa(id);
 C   ALTER TABLE ONLY public.pkl DROP CONSTRAINT pkl_mahasiswa_id_fkey;
       public          postgres    false    230    4769    236            �           2606    16694 !   skripsi skripsi_mahasiswa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.skripsi
    ADD CONSTRAINT skripsi_mahasiswa_id_fkey FOREIGN KEY (mahasiswa_id) REFERENCES public.mahasiswa(id);
 K   ALTER TABLE ONLY public.skripsi DROP CONSTRAINT skripsi_mahasiswa_id_fkey;
       public          postgres    false    4769    230    234            A      x������ � �      I      x������ � �      M      x������ � �      K      x������ � �      Q      x������ � �      G      x������ � �      ?     x���َ�J ��y'l"^"�*��9���Ae�����ܒ4M}�TU7񬤡�2-Sdk�q�ɭ\�=�dZ.���)��xV�����,rA��}:ֺ�����Ϣ��<�l��|�n}�c	q_��HR����������cdWN=,q��w˙1{�1��1AQx���)�������c(B��װ�ϰPMeE�
k���G�1�V�G�Q�nk ��?�9 ў=h�*�賧jz{�\��Y]T�v,�'�l�#"朸&�6�?�W�2���)ȏ���ԯx���#U���H�h8�S�R$��c�h}���4��n��eZ\lp+0�E��i8�
�[��٣r4c� �=��isbi!��bv��G�\��!�.�L]�&+UFH�J��v������'0��*lp+ܤ.�j��T��:QN�E�Z�{���<�)���l�����X��V8`�y�8�}���E�G@ɼ��Щ�4ӏ�����q��Cf����b�q���4��f��H� VH�
��-Cm+��p d��V8�3���S��J�X��i�NȷQh]0����G�-���c��L�T�Z3�t�p��Qzc&��?�+�F�:Ҥ����%՝7��V���H�wb��%C�L�4a��IV�E;�K��׫ �u�8`&���"�c�\}�����-w����*�jUF$Ն� ������8��H�,�ɑj�(���H��~J�DODd��#k����1��J>s�߁�(R�����S�v���H[�O�ܚ��1����cY����V�!a�y�Û��u;��+N"`svu�np�p�ގHbL$�2*�A��}�mC�M<&5k�n!��,�D��W���eɧ� )�8���Ρȹ6�0�e"��s�ه�l�nY��Z�/����U���ed餕��r��e���8�n��8v�[�r��`�q50�G���S}�}c����nᱵ���Z�x��Rd<g�)5Upa4+����1�fs]O������:?�d1�g��[�=�e�xțA���8�6�����8Q�$R)�;$����"v��fAS���x���4����N3ebm%*��,��.�x��f�m��<j�3w�Ƒ����ﯯ��zH4�      C      x������ � �      O      x������ � �      E      x������ � �      >   q   x�3�LO�I͆��%�)�y%�z�y)�z��z�)�*FI*�*�.��)>�&����Eى���.)�nf�U%�!&)�F�.�yEy..%���e���E�%�E\1z\\\ �#�     
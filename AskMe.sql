PGDMP     ,        	            x           Askme    13.1    13.1 *    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    Askme    DATABASE     d   CREATE DATABASE "Askme" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE "Askme";
                postgres    false            �            1259    24638    admins    TABLE     �   CREATE TABLE public.admins (
    admin_id integer NOT NULL,
    mp character varying(255),
    nom character varying(255),
    prenom character varying(255),
    email character varying(255)
);
    DROP TABLE public.admins;
       public         heap    postgres    false            �            1259    24579    evaliation_eva_id_seq    SEQUENCE     �   CREATE SEQUENCE public.evaliation_eva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.evaliation_eva_id_seq;
       public          postgres    false            �            1259    24576 
   evaliation    TABLE     �   CREATE TABLE public.evaliation (
    eva_id integer DEFAULT nextval('public.evaliation_eva_id_seq'::regclass) NOT NULL,
    reponse_id integer,
    notation_id integer
);
    DROP TABLE public.evaliation;
       public         heap    postgres    false    201            �            1259    24584    notaions_notation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notaions_notation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.notaions_notation_id_seq;
       public          postgres    false            �            1259    24581    notaions    TABLE     �   CREATE TABLE public.notaions (
    notation_id integer DEFAULT nextval('public.notaions_notation_id_seq'::regclass) NOT NULL,
    notaions integer
);
    DROP TABLE public.notaions;
       public         heap    postgres    false    203            �            1259    24650    questioneur    TABLE     �   CREATE TABLE public.questioneur (
    questioneur_id integer NOT NULL,
    mp character varying(255),
    nom character varying(255),
    prenom character varying(255),
    email character varying(255)
);
    DROP TABLE public.questioneur;
       public         heap    postgres    false            �            1259    24586 	   questions    TABLE     �   CREATE TABLE public.questions (
    q_id integer NOT NULL,
    question character varying(255),
    discreption character varying(255),
    intro character varying(255),
    tags integer
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    24592    questions_q_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_q_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.questions_q_id_seq;
       public          postgres    false    204            �           0    0    questions_q_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.questions_q_id_seq OWNED BY public.questions.q_id;
          public          postgres    false    205            �            1259    24644 
   repondeurs    TABLE     �   CREATE TABLE public.repondeurs (
    repondeur_id integer NOT NULL,
    mp character varying(255),
    nom character varying(255),
    prenom character varying(255),
    email character varying(255)
);
    DROP TABLE public.repondeurs;
       public         heap    postgres    false            �            1259    24594    reponses    TABLE     w   CREATE TABLE public.reponses (
    id integer NOT NULL,
    question_id integer,
    reponse character varying(255)
);
    DROP TABLE public.reponses;
       public         heap    postgres    false            �            1259    24597    reponses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reponses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.reponses_id_seq;
       public          postgres    false    206            �           0    0    reponses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.reponses_id_seq OWNED BY public.reponses.id;
          public          postgres    false    207            �            1259    24599    tags    TABLE     Z   CREATE TABLE public.tags (
    tag_id integer NOT NULL,
    tag character varying(255)
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    24602    tags_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tags_tag_id_seq;
       public          postgres    false    208            �           0    0    tags_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tags_tag_id_seq OWNED BY public.tags.tag_id;
          public          postgres    false    209            �            1259    24604    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24607    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    210            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    211            3           2604    24611    questions q_id    DEFAULT     p   ALTER TABLE ONLY public.questions ALTER COLUMN q_id SET DEFAULT nextval('public.questions_q_id_seq'::regclass);
 =   ALTER TABLE public.questions ALTER COLUMN q_id DROP DEFAULT;
       public          postgres    false    205    204            4           2604    24612    reponses id    DEFAULT     j   ALTER TABLE ONLY public.reponses ALTER COLUMN id SET DEFAULT nextval('public.reponses_id_seq'::regclass);
 :   ALTER TABLE public.reponses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            5           2604    24613    tags tag_id    DEFAULT     j   ALTER TABLE ONLY public.tags ALTER COLUMN tag_id SET DEFAULT nextval('public.tags_tag_id_seq'::regclass);
 :   ALTER TABLE public.tags ALTER COLUMN tag_id DROP DEFAULT;
       public          postgres    false    209    208            6           2604    24614    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    211    210            �          0    24638    admins 
   TABLE DATA           B   COPY public.admins (admin_id, mp, nom, prenom, email) FROM stdin;
    public          postgres    false    212   �*       �          0    24576 
   evaliation 
   TABLE DATA           E   COPY public.evaliation (eva_id, reponse_id, notation_id) FROM stdin;
    public          postgres    false    200   	+       �          0    24581    notaions 
   TABLE DATA           9   COPY public.notaions (notation_id, notaions) FROM stdin;
    public          postgres    false    202   &+       �          0    24650    questioneur 
   TABLE DATA           M   COPY public.questioneur (questioneur_id, mp, nom, prenom, email) FROM stdin;
    public          postgres    false    214   C+       �          0    24586 	   questions 
   TABLE DATA           M   COPY public.questions (q_id, question, discreption, intro, tags) FROM stdin;
    public          postgres    false    204   `+       �          0    24644 
   repondeurs 
   TABLE DATA           J   COPY public.repondeurs (repondeur_id, mp, nom, prenom, email) FROM stdin;
    public          postgres    false    213   }+       �          0    24594    reponses 
   TABLE DATA           <   COPY public.reponses (id, question_id, reponse) FROM stdin;
    public          postgres    false    206   �+       �          0    24599    tags 
   TABLE DATA           +   COPY public.tags (tag_id, tag) FROM stdin;
    public          postgres    false    208   �+       �          0    24604    users 
   TABLE DATA           5   COPY public.users (user_id, name, email) FROM stdin;
    public          postgres    false    210   �+       �           0    0    evaliation_eva_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.evaliation_eva_id_seq', 1, false);
          public          postgres    false    201            �           0    0    notaions_notation_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.notaions_notation_id_seq', 1, false);
          public          postgres    false    203            �           0    0    questions_q_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.questions_q_id_seq', 1, false);
          public          postgres    false    205            �           0    0    reponses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.reponses_id_seq', 1, false);
          public          postgres    false    207            �           0    0    tags_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tags_tag_id_seq', 1, false);
          public          postgres    false    209            �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
          public          postgres    false    211            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     
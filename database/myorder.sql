PGDMP                         z            manage_ver1_lms    14.3    14.3     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24591    manage_ver1_lms    DATABASE     s   CREATE DATABASE manage_ver1_lms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE manage_ver1_lms;
                postgres    false            ?            1259    40979    myorder    TABLE     ?   CREATE TABLE public.myorder (
    link_course text,
    address_user text,
    name_product text,
    name_author text,
    link_image text,
    price text
);
    DROP TABLE public.myorder;
       public         heap    postgres    false            ?          0    40979    myorder 
   TABLE DATA           j   COPY public.myorder (link_course, address_user, name_product, name_author, link_image, price) FROM stdin;
    public          postgres    false    213   ?       ?   ?   x?=ͽn?0@??y??@?k?1#S?2UB?	q??"1myzTUb<?w?????0P???WB???`}??}?!???)?Z?1??B????????J?1R??嗥m??^??h?&??f???R?qI???]D?@?m??|%?((%?\h񗿀??gi?????<2??U_?????BH     
PGDMP     2                    z            manage_ver1_lms    14.3    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24591    manage_ver1_lms    DATABASE     s   CREATE DATABASE manage_ver1_lms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE manage_ver1_lms;
                postgres    false            �            1259    32792    manage_information_cource    TABLE     n   CREATE TABLE public.manage_information_cource (
    link_access text NOT NULL,
    information_manage json
);
 -   DROP TABLE public.manage_information_cource;
       public         heap    postgres    false            �          0    32792    manage_information_cource 
   TABLE DATA           T   COPY public.manage_information_cource (link_access, information_manage) FROM stdin;
    public          postgres    false    211          g           2606    32798 8   manage_information_cource manage_information_cource_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.manage_information_cource
    ADD CONSTRAINT manage_information_cource_pkey PRIMARY KEY (link_access);
 b   ALTER TABLE ONLY public.manage_information_cource DROP CONSTRAINT manage_information_cource_pkey;
       public            postgres    false    211            �     x�UO�N�0��SX�Qd�Ѯ< k�ȸ��$9G�C�00� �"� [3�ɛԮ�6�r������B�\H�P������	Eh��(t/!c�<A���jD.�"5/ �YF�t~EǩF�xP�:��mV�0o���q4����;���`�B���I���᥋r���gI��J���R���$V�H4
�W�x0��C�N���6���q��W���ݛ:^
ƪL	n=�z�~UD8�7���yo-u�Ag��&��`��A� 
���     
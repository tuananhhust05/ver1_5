PGDMP         9                z            manage_ver1_lms    14.3    14.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24591    manage_ver1_lms    DATABASE     s   CREATE DATABASE manage_ver1_lms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE manage_ver1_lms;
                postgres    false            �            1259    32775    infomation_cource     TABLE     Y   CREATE TABLE public."infomation_cource " (
    link_access text,
    data_cource json
);
 (   DROP TABLE public."infomation_cource ";
       public         heap    postgres    false            �            1259    32768    list_nft    TABLE     `   CREATE TABLE public.list_nft (
    link_access text NOT NULL,
    address text,
    abi json
);
    DROP TABLE public.list_nft;
       public         heap    postgres    false            �            1259    32792    manage_information_cource    TABLE     n   CREATE TABLE public.manage_information_cource (
    link_access text NOT NULL,
    information_manage json
);
 -   DROP TABLE public.manage_information_cource;
       public         heap    postgres    false            �            1259    40979    myorder    TABLE     �   CREATE TABLE public.myorder (
    link_course text,
    address_user text,
    name_product text,
    name_author text,
    link_image text,
    price text
);
    DROP TABLE public.myorder;
       public         heap    postgres    false            �            1259    40960    test    TABLE     -   CREATE TABLE public.test (
    value text
);
    DROP TABLE public.test;
       public         heap    postgres    false            �          0    32775    infomation_cource  
   TABLE DATA           H   COPY public."infomation_cource " (link_access, data_cource) FROM stdin;
    public          postgres    false    210   �       �          0    32768    list_nft 
   TABLE DATA           =   COPY public.list_nft (link_access, address, abi) FROM stdin;
    public          postgres    false    209   �       �          0    32792    manage_information_cource 
   TABLE DATA           T   COPY public.manage_information_cource (link_access, information_manage) FROM stdin;
    public          postgres    false    211   �       �          0    40979    myorder 
   TABLE DATA           j   COPY public.myorder (link_course, address_user, name_product, name_author, link_image, price) FROM stdin;
    public          postgres    false    213          �          0    40960    test 
   TABLE DATA           %   COPY public.test (value) FROM stdin;
    public          postgres    false    212   �       l           2606    32774    list_nft list_nft_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.list_nft
    ADD CONSTRAINT list_nft_pkey PRIMARY KEY (link_access);
 @   ALTER TABLE ONLY public.list_nft DROP CONSTRAINT list_nft_pkey;
       public            postgres    false    209            n           2606    32798 8   manage_information_cource manage_information_cource_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.manage_information_cource
    ADD CONSTRAINT manage_information_cource_pkey PRIMARY KEY (link_access);
 b   ALTER TABLE ONLY public.manage_information_cource DROP CONSTRAINT manage_information_cource_pkey;
       public            postgres    false    211            �      x��W]kG}���g}X���~)$��BM�b��j'��*��JD�C�C(�J	!Ċ0���8}���U�?���ܙ��91X�vf�{��^���ճ.��~`��������Z�ܵ�7�o�g��I��n���Ji՜�!fͶ$k'Ӊ̷*���ޟ���3G���x:�#c�d2}����QM,f�c��D2� �}<:�l�D�Y;��B��`�c>g����Y'�ve���]va�I�d
4G�ڭ�*�%�+�l��OU����xV��R��k�;� ^7ۙ�n���(56��6����P���vP�������w��eW�\�W͕�J}��zc���-���*߮ê�zV�	Gա'���
=٭����[�j��@KA�w�j���շ�/[�� n��N8B$�)(S>��K2���"��4s+7A�VX�se�I���2�$��"�-�^dv57{k>I�2?�]+���t
�����~�	�{f!�\2�vN�$��\dw=�{�1����&[2�V�OX{'L�Һ��1{�Q������N�UH�ZJx��jP����;�{%��D/��NeHM�b��f�����p�*�/j�Y��G��]����B�>�� 5��'�	�}��z���.�k9E�I�î�1���z+���T�\���c���Qji�|a�8��O�#����#��s����b}�
<�`߃�K�	�q�m0�9=��h�D�O�P��̶9���n��|�S����)}�>YO��$	o�K�x'��8��n^Q�-��C��t�~� �<+(f��N�ˍƉ�
!f���tZ�H��a�]JSK�߀3�I�4;��v/�N)c�DQ��N�܍'����P�����z�6�SD�{���g:o�G9�x�KU�w�>��o����(���j(V` z-@́^0��P/��j7����\w#��FK�u�h�):��`��91�>Ŷ�����rll���{#W8�1���X�$�a�#t�V�{���HcI��"^&��Ez{�)J��i_�W���['ޓY��"��zxΔ-�������&��Q�<�J�5�)E�J�xl�J(�e��3�R������'�l�.�iY�T'ZR�_�&56؏B��Ҫ.lm�!�7k�zX|�g84�z���-�+�SӚ]�ۡ������r���|\��yEl�v�H�r��-���Ʒ׾O� ��y��.!{����QcD�R��z1�DЌadh���������Pӹ�� 'F¨�Ƨ _�!��R�B�湜�HK��rl_��ܩI,u5�Ꙅ�eD�K��B�5
�����F/5s���Q~� U6�][Q=��i����z!*ٰ�U�5uN#_3u��F2�%��Qy�Ԩ�6���_Y��a�)�s�Ut�E���ܽP���g��d4S�D���ɛifz�jgR�$WOe��QѾ5�n:x�)���P}XWi4�?ۗ��@^aiW`���ت-g��h�Nmii�?="8�      �   0  x���n�0E��+��QD�]ʮ��B�$n��-�����QS)��T��m����3�&���8R�e�&�������i캮?�lw�͜�w�����˷����ѳ��H �d�
�4��b��c�UF�	t�SV1����)+kH�$�-)A8�)8��sA�)���Tډt�ʉЪ���e
{֪��p�W�r��ڎ�F����g1�	�oPCH )��{�+]���z[��'_F���{��~��XF%OkaO�?����&���y��`;�j߀V;!�ÛJi��J��o���,�`b�'kPM�      �     x�UO�N�0��SX�Qd�Ѯ< k�ȸ��$9G�C�00� �"� [3�ɛԮ�6�r������B�\H�P������	Eh��(t/!c�<A���jD.�"5/ �YF�t~EǩF�xP�:��mV�0o���q4����;���`�B���I���᥋r���gI��J���R���$V�H4
�W�x0��C�N���6���q��W���ݛ:^
ƪL	n=�z�~UD8�7���yo-u�Ag��&��`��A� 
���      �   �   x�=ͽn�0@��y��@�k�1#S�2UB�	q��"1myzTUb<�w�����0P���WB?��`}��}�!���)�Z�1��B��������J�1R��嗥m��^��h�&��f���R�qI�?]D�@�m��|%�((%�\h񗿀��gi�����<2��U_����BH      �       x�)}�ki�Bb^�w��ݍ�t�b���� ��71     
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: infomation_cource ; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."infomation_cource " (
    link_access text,
    data_cource json
);


ALTER TABLE public."infomation_cource " OWNER TO postgres;

--
-- Name: list_nft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_nft (
    link_access text NOT NULL,
    address text,
    abi json
);


ALTER TABLE public.list_nft OWNER TO postgres;

--
-- Name: manage_information_cource; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manage_information_cource (
    link_access text NOT NULL,
    information_manage json
);


ALTER TABLE public.manage_information_cource OWNER TO postgres;

--
-- Name: myorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.myorder (
    link_course text,
    address_user text,
    name_product text,
    name_author text,
    link_image text,
    price text
);


ALTER TABLE public.myorder OWNER TO postgres;

--
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    value text
);


ALTER TABLE public.test OWNER TO postgres;

--
-- Data for Name: infomation_cource ; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."infomation_cource " (link_access, data_cource) FROM stdin;
blockchaincourse.json	{\n    "name":"Vũ Ngọc Huy",\n    "namecourse":"Blockchain căn bản",\n    "titlecourse":"Khóa học sẽ giúp bạn nắm được các kiến thức cơ bản về blockchain,cách tạo ra 1 dapp sử dụng công nghệ blockchain",\n   \n    "time_course":"3 giờ 22 phút",\n    "course_document":"31 bài giảng",\n    \n    "img_course":"https://baoquocte.vn/stores/news_dataimages/dangtuan/012020/09/15/tien-si-tre-vu-ngoc-huy-voi-y-tuong-ung-dung-blockchain.jpg",\n\n    "what_you_learn_1_title":"Tư duy đúng trong đầu tư coin",\n    "what_you_learn_2_title":"Hiểu được 04 nguồn thu nhập từ đầu tư",\n    "what_you_learn_3_title":"Nắm được kiến thức cơ bản về blockchain",\n    "what_you_learn_4_title":"Tránh được những rủi ro, cạm bẫy trên TT",\n    "what_you_learn_5_title":"Chiến lược đầu tư tạo thu nhập",\n    "what_you_learn_6_title":"Có khả năng tự xây dựng 1 dapp",\n   \n    "course_introduction1_1":"Bạn là người mới bắt đầu học làm quen với blockchain?",\n    "course_introduction1_2":"Bạn chưa có nhiều kiến thức hay kinh nghiệm về web3",\n    "course_introduction1_3":"Bạn muốn tăng thu nhập nhanh chóng từ phát triển phần mềm?",\n    "course_introduction1_4":"Hay bạn muốn đầu tư cổ phiếu nhưng không biết lựa chọn loại coin và thời điểm mua vào để sinh lợi?",\n    "course_introduction1_5":"Bạn đang tìm kiếm một khóa học  phù hợp nhưng không biết tìm ở đâu?",\n    "course_introduction2":"Ứng dụng được biết đến và thảo luận nhiều nhất về công nghệ Blockchain chính là đồng tiền điện tử. Bitcoin là một đơn vị tiền tệ kỹ thuật số với mã là BTC, cũng giống như đô la Mỹ bản thân nó không mang giá trị, nó chỉ có giá trị bởi vì có một cộng đồng đồng ý sử dụng nó làm đơn vị giao dịch hàng hóa và dịch vụ.Để theo dõi số lượng Bitcoin mà mỗi người sở hữu trong các tài khoản nhất định và theo dõi các giao dịch phát sinh từ đó thì chúng ta cần đến một cuốn sổ kế toán, trong trường hợp này nó chính là Blockchain và đây thực tế là một tệp kỹ thuật số theo dõi tất cả các giao dịch Bitcoin.",\n    \n    "course_content_p1":"Phần 1: Giới thiệu về blockchain",\n    "course_content_p1_1":\n        {\n            "name_leture":"Bài 1: Giới thiệu về thuật toán",\n            "time":"3:52"\n        }\n    ,\n    "course_content_p1_2":\n        {\n            "name_leture":"Bài 2: Viết smart contract",\n            "time":"4:76"\n        }\n    ,\n    "course_content_p2":"Phần 2: Giới thiệu về web3js",\n    "course_content_p1_3":\n        {\n            "name_leture":"Bài 3: Viết chương trình đầu tiên với web3js",\n            "time":"3:52"\n        }\n    ,\n    "course_content_p1_4":\n        {\n            "name_leture":"Bài 4: Viết 1 dapp hoàn chỉnh cùng với web3js ",\n            "time":"8:52"\n        }\n    ,\n    "infomation_teacher":"Phát triển giáo dục là ưu tiên hàng đầu và tiền đề giúp đào tạo lớp trí thức - yếu tố cơ bản để phát triển xã hội, tăng trưởng kinh tế nhanh và bền vững. Bởi vậy, TS. Vũ Ngọc Huy cho rằng ứng dụng công nghệ Blockchain trong quản lý giáo dục là cần thiết. Đây cũng là cơ hội giúp nhìn thấy được tiềm năng của việc ứng dụng công nghệ Blockchain trong một lĩnh vực cụ thể khác."\n    \n}
\.


--
-- Data for Name: list_nft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_nft (link_access, address, abi) FROM stdin;
blockchaincourse.json	0xDF332f55589735F764f854dc9a00408081AdC70c	{"abi":[\n  {\n    "inputs": [\n      {\n        "internalType": "string",\n        "name": "a",\n        "type": "string"\n      }\n    ],\n    "name": "Buy",\n    "outputs": [],\n    "stateMutability": "payable",\n    "type": "function"\n  },\n  {\n    "inputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "name": "balance",\n    "outputs": [\n      {\n        "internalType": "uint256",\n        "name": "",\n        "type": "uint256"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  },\n  {\n    "inputs": [],\n    "name": "description",\n    "outputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  },\n  {\n    "inputs": [],\n    "name": "link_course",\n    "outputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  },\n  {\n    "inputs": [],\n    "name": "link_image",\n    "outputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  },\n  {\n    "inputs": [],\n    "name": "name_author",\n    "outputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  },\n  {\n    "inputs": [],\n    "name": "name_product",\n    "outputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  },\n  {\n    "inputs": [],\n    "name": "price",\n    "outputs": [\n      {\n        "internalType": "string",\n        "name": "",\n        "type": "string"\n      }\n    ],\n    "stateMutability": "view",\n    "type": "function"\n  }\n]\n}
\.


--
-- Data for Name: manage_information_cource; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manage_information_cource (link_access, information_manage) FROM stdin;
blockchaincourse.json	{ "new_price":399.000,\n    "old_price":600.000,\n    "sale_off":"58",\n    "count_review":3000,\n    "student_cource":5324,\n    "cout_cource":10,\n    "count_student_teacher":12034,\n    "sale_program":"Giảm thêm 20k khi thanh toán online",\n    "own_cource":"Sở hữu khóa học trọn đời",\n    "certificate":"Cấp chứng chỉ khi hoàn thành"\n}\n
\.


--
-- Data for Name: myorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.myorder (link_course, address_user, name_product, name_author, link_image, price) FROM stdin;
blockchaincourse.json	0x94d08b9d4b49d1cc33b72a384d46646e28054881	Blockchain course	Vu Ngoc Huy	https://photo-cms-tinnhanhchungkhoan.zadn.vn/w660/Uploaded/2022/ipuokbf/2020_11_16/blockchain-5504.jpg	0.05
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (value) FROM stdin;
Tuấn anh
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
Kiều
\.


--
-- Name: list_nft list_nft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.list_nft
    ADD CONSTRAINT list_nft_pkey PRIMARY KEY (link_access);


--
-- Name: manage_information_cource manage_information_cource_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manage_information_cource
    ADD CONSTRAINT manage_information_cource_pkey PRIMARY KEY (link_access);


--
-- PostgreSQL database dump complete
--


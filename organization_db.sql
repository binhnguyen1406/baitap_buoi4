--
-- PostgreSQL database dump
--

-- Dumped from database version 17.3
-- Dumped by pg_dump version 17.3

-- Started on 2026-01-25 15:03:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 30769)
-- Name: organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organization (
    orgid integer NOT NULL,
    orgname character varying(255) NOT NULL,
    address character varying(255),
    phone character varying(20),
    email character varying(100),
    createddate timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.organization OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 30768)
-- Name: organization_orgid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organization_orgid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.organization_orgid_seq OWNER TO postgres;

--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 217
-- Name: organization_orgid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organization_orgid_seq OWNED BY public.organization.orgid;


--
-- TOC entry 4742 (class 2604 OID 30772)
-- Name: organization orgid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization ALTER COLUMN orgid SET DEFAULT nextval('public.organization_orgid_seq'::regclass);


--
-- TOC entry 4894 (class 0 OID 30769)
-- Dependencies: 218
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organization (orgid, orgname, address, phone, email, createddate) FROM stdin;
1	nguyen	hanoi	09842385345	anguyennn@gmail.com	2026-01-22 12:55:48.057612
2	Công ty TNHH Công Nghệ Con Cưng	123 Nguyễn Huệ	0712346599	anguyen@gmail.com	2026-01-22 13:20:06.330036
3	Công ty TNHH Giải Pháp Số An Phát	Trần Phú	0912131334	binh@gmail.com	2026-01-22 13:37:40.100102
4	Công ty TNHH Công Nghệ Minh Long	Tân Bình	0909123456	nguyenhuubinh@gmail.com	2026-01-22 13:51:38.932069
5	Valid Org 2c6ff8f4-a02b-405e-a3db-5aaf4e7b6777	HCM	0912345678	valid@gmail.com	2026-01-22 13:58:07.595078
6	Duplicate Org 7a9a6dc2-fa5b-4d20-81e3-b4742e242409	\N	0123456789	test1@gmail.com	2026-01-22 13:58:07.627602
7	No Address 9ab9468b-4da8-4422-8026-1621ce2ec09c	\N	0984238534	\N	2026-01-22 14:07:51.68444
8	Công ty Bình An e64a5296-c378-4cdb-b8da-6cb895731e36	TP Hồ Chí Minh	09842385345	anguyen@gmail.com	2026-01-22 14:07:51.711726
9	No Email 8041872f-5153-4fa1-ac68-6e24d0e4bcb0	\N	0984238534	\N	2026-01-22 14:07:51.713029
10	Valid Email 1d737eb0-b078-4158-b8c7-c0ee4878190e	\N	0984238534	anguyen@gmail.com	2026-01-22 14:07:51.714099
11	Phone 9 Digits 4d827b85-7471-4579-8484-7af352c2431e	\N	123456789	\N	2026-01-22 14:07:51.715446
12	No Phone 29868632-9784-410b-a513-feb573c114ac	\N	\N	anguyen@gmail.com	2026-01-22 14:07:51.71656
13	Duplicate Org 1b189b5f-53a7-424f-855a-790d4639fc64	\N	0984238534	\N	2026-01-22 14:07:51.719676
14	Công ty TNHH Công Nghệ Sao Việt	Quận 5	0984238534	anguyen@gmail.com	2026-01-25 13:22:18.565381
15	No Address 5b1bf9ae-b549-4724-9732-5cc9dc52febd	\N	0984238534	\N	2026-01-25 13:23:07.978325
16	Công ty Bình An 8dae261d-cab1-49eb-8a34-68385096b7d1	TP Hồ Chí Minh	09842385345	anguyen@gmail.com	2026-01-25 13:23:08.006191
17	No Email 68eee885-83e2-444e-8c22-5dcbc1005618	\N	0984238534	\N	2026-01-25 13:23:08.01085
18	Valid Email 10b05ed4-eb13-4821-b8e8-139cd0d50197	\N	0984238534	anguyen@gmail.com	2026-01-25 13:23:08.011813
19	Phone 9 Digits 9467d7b3-f638-4cfc-b679-b90c57ffb63d	\N	123456789	\N	2026-01-25 13:23:08.012683
20	No Phone 083a6fb9-3995-4e29-9ef7-bafb5f0fd386	\N	\N	anguyen@gmail.com	2026-01-25 13:23:08.013648
21	Duplicate Org c623e0af-2dea-4259-9dd9-d6e4a582dbc3	\N	0984238534	\N	2026-01-25 13:23:08.017327
\.


--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 217
-- Name: organization_orgid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organization_orgid_seq', 21, true);


--
-- TOC entry 4745 (class 2606 OID 30779)
-- Name: organization organization_orgname_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_orgname_key UNIQUE (orgname);


--
-- TOC entry 4747 (class 2606 OID 30777)
-- Name: organization organization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (orgid);


-- Completed on 2026-01-25 15:03:16

--
-- PostgreSQL database dump complete
--

